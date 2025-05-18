from process_composition import custom_composition
import sqlite3
from globals import flags, banned_ingredients, features
from itertools import combinations
import subprocess
import re

analysis_results = {}
pairwise_comparison_results = []
user_comparison_results = []
banned_results =[]

def get_composition_data(item_id):
    conn = sqlite3.connect('composition_vectors.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM tokenized_table WHERE itemId=?", (item_id,))

    row = cursor.fetchone()
    conn.close()

    if row:
        composition = row[1]
        found_flags = row[2:2 + len(flags)]
        banned = row[2 + len(flags):2 + len(flags) + len(banned_ingredients)]  # После флагов идут запрещенные ингредиенты

        return composition, found_flags, banned
    else:
        return None, None, None


def generate_clips_facts_active( data_1, data_2):
    facts = "(reset)\n"
    #первый элемент
    components_1 = data_1["active_components"]
    for component in components_1:
        if component:
            facts += f'(assert (first_element "{component}"))\n'

    #второй элемент
    components_2 = data_2["active_components"]
    for component in components_2:
        if component:
            facts += f'(assert (second_element "{component}"))\n'
    # print(facts)

    return facts

def run_clips_rules_active(facts):
    rules_file = r"generated_rules_new.clp"
    clips_path = r"C:\Program Files\SSS\CLIPS 6.4.2\CLIPSDOS.exe"

    process = subprocess.Popen(
        [clips_path],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=False  # Работаем с байтами?..
    )

    commands = f"""
    (load "{rules_file}")
    {facts}
    (watch facts)
    (run)
    (facts)
    (exit)
    """.encode('utf-8')

    process.stdin.write(commands)
    process.stdin.flush()

    stdout, stderr = process.communicate(timeout=10)

    def decode_clips_output(output):
        try:
            return output.decode('utf-8')
        except UnicodeDecodeError:
            return output.decode('cp1251', errors='replace')

    stdout_str = decode_clips_output(stdout)
    stderr_str = decode_clips_output(stderr)

    #print("Вывод CLIPS (stdout):", stdout_str)
    print("Ошибки CLIPS (stderr):", stderr_str)

    final_result = None
    info_facts = []

    fact_pattern = re.compile(r'\(info\s+"((?:.|\n)*?)"\)', re.MULTILINE)
    final_result_pattern = re.compile(r'\(final_result\s+"(.*?)"\)')

    # Ищем все info (возможно, многострочные)
    info_facts = [match.strip() for match in fact_pattern.findall(stdout_str)]

    # Ищем final_result
    final_result_match = final_result_pattern.search(stdout_str)
    final_result = final_result_match.group(1) if final_result_match else None

    # for line in stdout_str.splitlines():
    #     line = line.strip()
    #     if not line.startswith('f-') or '(' not in line:
    #         continue
    #
    #     fact_content = line.split('(', 1)[1].rsplit(')', 1)[0]
    #     if fact_content.startswith('final_result'):
    #         final_result = fact_content.split('"')[1] if '"' in fact_content else fact_content.split()[-1]
    #     elif fact_content.startswith('info'):
    #         info_text = fact_content[5:].strip('"')
    #         info_facts.append(info_text)

    return {
        "final_result": final_result,
        "info_facts": info_facts,
        "raw_output": stdout_str,
        "error": stderr_str if process.returncode != 0 else None
    }

def generate_clips_facts_user(user_survey_data):
    facts = ""

    if 'skin_type' in user_survey_data and user_survey_data['skin_type']:
        facts += f'(assert (user_fact skin_type "{user_survey_data["skin_type"]}"))\n'

    if user_survey_data.get('sensitive', None):
        facts += '(assert (user_fact sensitive_skin "Да"))\n'

    if 'age' in user_survey_data and user_survey_data['age']:
        facts += f'(assert (user_fact age "{user_survey_data["age"]}"))\n'

    if 'tendencies' in user_survey_data and isinstance(user_survey_data['tendencies'], list):
        for t in user_survey_data['tendencies']:
            facts += f'(assert (user_fact tendencies "{t}"))\n'

    if user_survey_data.get('had_procedure') == 'Да':
        facts += '(assert (user_fact had_procedure "Да"))\n'
        if 'procedure_types' in user_survey_data:
            for proc_type, was_done in user_survey_data['procedure_types'].items():
                if was_done:
                    facts += f'(assert (user_fact procedure_types "{proc_type}"))\n'

    if user_survey_data.get('has_allergy') == 'Да':
        facts += '(assert (user_fact has_allergy "Да"))\n'

    if 'weather' in user_survey_data and isinstance(user_survey_data['weather'], list):
        for w in user_survey_data['weather']:
            facts += f'(assert (user_fact weather "{w}"))\n'

    if 'makeup' in user_survey_data and user_survey_data['makeup'] in ['Да', 'Нет']:
        facts += f'(assert (user_fact makeup "{user_survey_data["makeup"]}"))\n'

    # print(facts)
    return facts

def generate_clips_facts_description(item_id):
    conn = sqlite3.connect('description_features.db')
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM description_flags WHERE itemId=?", (item_id,))
    row = cursor.fetchone()
    conn.close()

    if not row:
        print(f"Нет описания для itemId {item_id}")
        return None

    feature_flags = row[2:]  # Пропускаем itemId и description_tokens
    feature_facts = ""

    for i, flag in enumerate(feature_flags):
        if flag == 1:
            feature = features[i]
            feature_facts += f'(assert (product_feature "{feature}"))\n'

    # print(feature_facts)
    return feature_facts

def run_clips_rules(rules_file, *facts_sets):
    # rules_file = r"user_product_rules.clp"
    clips_path = r"C:\Program Files\SSS\CLIPS 6.4.2\CLIPSDOS.exe"

    process = subprocess.Popen(
        [clips_path],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=False  # Байты
    )

    # commands = f"""
    # (load "{rules_file}")
    # {user_facts}
    # {product_facts}
    # (watch facts)
    # (run)
    # (facts)
    # (exit)
    # """.encode("utf-8")
    commands = f'(load "{rules_file}")\n'
    for facts in facts_sets:
        commands += facts + "\n"
    commands += "(run)\n(facts)\n(exit)\n"
    commands = commands.encode("utf-8")

    process.stdin.write(commands)
    process.stdin.flush()

    stdout, stderr = process.communicate(timeout=10)

    def decode_clips_output(output):
        try:
            return output.decode('utf-8')
        except UnicodeDecodeError:
            try:
                return output.decode('cp1251')
            except:
                return output.decode('cp866', errors='replace')

    stdout_str = decode_clips_output(stdout)
    stderr_str = decode_clips_output(stderr)

    # print("Вывод CLIPS (stdout):", stdout_str)
    # print("Ошибки CLIPS (stderr):", stderr_str)

    # Парсим результат
    results = set()
    info_facts = []

    result_pattern = re.compile(r'\(result\s+"?(.*?)"?\)')
    results.update(match.strip() for match in result_pattern.findall(stdout_str) if match.strip())

    info_matches = re.finditer(r'\(info\s+"((?:[^"\\]|\\.)*)"\)', stdout_str)
    for match in info_matches:
        info_text = match.group(1)
        info_text = info_text.replace('\\"', '"')
        info_facts.append(info_text)

    results = list(results)
    return {
        "result": results,
        "info": info_facts,
        "raw_output": stdout_str,
        "error": stderr_str if process.returncode != 0 else None
    }

def generate_clips_facts_banned(data):
    facts = "(reset)\n"
    banned_components = data.get("banned_components", [])
    for component in banned_components:
        if component:
            facts += f'(assert (element "{component}"))\n'
    return facts

def run_analysis(selected_instruments, custom_ingredients, user_survey_data):
    # print("begin", user_survey_data)
    if custom_ingredients:
        # Обработка пользовательских (вручную введённых) средств
        for name, composition in custom_ingredients:
            #обработаем состав: перевод, приведение синонимов (через synonyms_data), выделим характеристики
            result = custom_composition(composition)
            active_components = []
            banned_components = []
            for component, flag in result[0].items():
                if flag == 1:
                    active_components.append(component)
            for component, flag in result[1].items():
                if flag == 1:
                    banned_components.append(component)

            analysis_results[name] = {
                "active_components": active_components,
                "banned_components": banned_components
            }

    if selected_instruments:
        for item_id, name in selected_instruments:
            composition, found_flags, banned = get_composition_data(item_id)

            if composition is None:
                print(f"Ошибка: нет состава для itemId {item_id}")
                continue

            active_components = []
            banned_components = []

            for i, flag in enumerate(found_flags):
                if flag == 1:
                    active_components.append(flags[i])  # Добавляем активный компонент по индексу

            for i, banned_flag in enumerate(banned):
                if banned_flag == 1:
                    banned_components.append(banned_ingredients[i])  # Добавляем компонент в список запрещенных

            analysis_results[name] = {
                "active_components": active_components,
                "banned_components": banned_components
            }

    if analysis_results:
        # print(" here ", analysis_results)

        if user_survey_data:
            user_facts = generate_clips_facts_user(user_survey_data)

            for item_id, name in selected_instruments:
                facts_description = generate_clips_facts_description(item_id)
                user_result = run_clips_rules("user_product_rules.clp", user_facts, facts_description)

                user_comparison_results.append({
                    "name": name,
                    "result": user_result.get("result"),
                    "info": user_result.get("info")
                })
            print(user_comparison_results)

        for (name_1, data_1), (name_2, data_2) in combinations(analysis_results.items(), 2):
            facts = generate_clips_facts_active(data_1, data_2)
            result = run_clips_rules_active(facts)

            pairwise_comparison_results.append({
                "name_1": name_1,
                "name_2": name_2,
                "final_result": result.get("final_result"),
                "info": result.get("info_facts")
            })

        for name, data in analysis_results.items():
            facts_banned = generate_clips_facts_banned(data)
            banned_result = run_clips_rules("banned_ingredients_rules.clp",facts_banned)

            banned_results.append({
                "name": name,
                "result": banned_result.get("result"),
                "info": banned_result.get("info")
            })

        # print(pairwise_comparison_results)
        # print(user_comparison_results)
        # print(banned_results)
    return(pairwise_comparison_results, user_comparison_results, banned_results)


