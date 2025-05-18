import re
import json
import sqlite3

from deep_translator import GoogleTranslator
from langdetect import detect, DetectorFactory
from langdetect.lang_detect_exception import LangDetectException
from globals import flags, banned_ingredients
import difflib

DetectorFactory.seed = 42
#по сути код обработки состава из diplom.ipynb
def is_non_empty(text):
    return bool(text and text.strip())
def contains_cyrillic(text):
    return bool(re.search(r'[а-яА-Я]', text))
def detect_language(text):
    try:
        return detect(text)
    except LangDetectException:
        return "unknown"
def translate_to_english(text):
    if not is_non_empty(text):
        return ""

    lang = detect_language(text)

    if lang == "en" and contains_cyrillic(text):
        force_translate = True
    else:
        force_translate = False

    if lang == "en" and not force_translate:
        return text
    elif lang == "unknown":
        print("unknown", text)
        return text

    try:
        print("Translating:", text)
        translated = GoogleTranslator(source='auto', target='en').translate(text)
        print("Translated:", translated)
        return translated
    except Exception as e:
        print(f"Translation failed: '{text[:50]}...' — {e}")
        return text

def find_similar_words(word, word_list, n=3, cutoff=0.6):
    return difflib.get_close_matches(word, word_list, n=n, cutoff=cutoff)

# функция обработки введенного состава
def custom_composition(composition):
    tokens = [token.strip() for token in re.split(r"[;,]", composition) if token.strip()]

    translated_tokens = []

    for token in tokens:
        translated_token = translate_to_english(token)  # Переводим токен
        translated_tokens.append(translated_token)

    try:
        with open("synonyms_data.json", "r", encoding="utf-8") as f:
            data = json.load(f)
            synonyms_cache = data.get("synonyms_cache", {})
    except Exception as e:
        print("Ошибка загрузки файла с синонимами:", e)
        synonyms_cache = {}

    # замена токенов по словарю синонимов
    standardized = []
    for token in translated_tokens:
        if token in synonyms_cache:
            synonyms = synonyms_cache[token]
            if synonyms:
                standardized.append(synonyms[0].lower())
                continue
        standardized.append(token)  # если синонима нет — оставляем как есть

    flag_results = {}
    banned_results = {}

    for flag in flags:
        similar_tokens = find_similar_words(flag.lower(), standardized)

        if flag.lower() in similar_tokens:
            flag_results[flag] = 1  # Точное совпадение
        elif len(similar_tokens) > 0:
            flag_results[flag] = 0  # Есть схожие слова, но не точные
        else:
            flag_results[flag] = -1  # Нет совпадений

    # Проверка по запрещённым компонентам
    for banned in banned_ingredients:
        similar_tokens = find_similar_words(banned.lower(), standardized)

        if banned.lower() in similar_tokens:
            banned_results[banned] = 1
        elif len(similar_tokens) > 0:
            banned_results[banned] = 1
        else:
            banned_results[banned] = 0

    return flag_results, banned_results

def find_allergy(selected_instruments, custom_ingredients, allergy_components):
    allergy_warnings = []
    translated_allergens = []
    for allergen in allergy_components:
        translated_allergen = translate_to_english(allergen)
        translated_allergens.append(translated_allergen)

    if selected_instruments:
        for item_id, name in selected_instruments:
            conn = sqlite3.connect('composition_vectors.db')
            cursor = conn.cursor()
            cursor.execute("SELECT composition_tokenized FROM tokenized_table WHERE itemId=?", (item_id,))
            row = cursor.fetchone()
            conn.close()

            if not row:
                continue

            composition_raw = row[0] if row[0] else ""
            composition_tokens = [token.strip() for token in composition_raw.split(';') if token.strip()]

            for allergen in translated_allergens:
                similar_tokens = find_similar_words(allergen.lower(), [token.lower() for token in composition_tokens])
                # print (allergen, similar_tokens, "\n", composition_tokens)
                if allergen.lower() in similar_tokens:
                    allergy_warnings.append({
                        "name": name,
                        "result": f"Внимание! был найден аллерген (точное совпадение) — {allergen}"
                    })
                elif similar_tokens:
                    allergy_warnings.append({
                        "name": name,
                        "result": f"Внимание! был найден аллерген (похожее слово) — {allergen}"
                    })

    if custom_ingredients:
        for name, composition in custom_ingredients:
            tokens = [token.strip() for token in re.split(r"[;,]", composition) if token.strip()]
            translated_tokens = []
            for token in tokens:
                translated_token = translate_to_english(token)
                translated_tokens.append(translated_token)
            try:
                with open("synonyms_data.json", "r", encoding="utf-8") as f:
                    data = json.load(f)
                    synonyms_cache = data.get("synonyms_cache", {})
            except Exception as e:
                print("Ошибка загрузки файла с синонимами:", e)
                synonyms_cache = {}

            # замена токенов по словарю синонимов
            standardized = []
            for token in translated_tokens:
                if token in synonyms_cache:
                    synonyms = synonyms_cache[token]
                    if synonyms:
                        standardized.append(synonyms[0].lower())
                        continue
                standardized.append(token)

            for allergen in translated_allergens:
                similar_tokens = find_similar_words(allergen.lower(), [token.lower() for token in standardized])
                # print(allergen, similar_tokens, "\n", standardized)
                if allergen.lower() in similar_tokens:
                    allergy_warnings.append({
                        "name": name,
                        "result": f"Внимание! был найден аллерген (точное совпадение) — {allergen}"
                    })
                elif similar_tokens:
                    allergy_warnings.append({
                        "name": name,
                        "result": f"Внимание! был найден аллерген (похожее слово) — {allergen}"
                    })
    # print(allergy_warnings)
    return allergy_warnings
# composition = "Глицерин, вода, кислота салициловая, azelainic acid"
# print(custom_composition(composition))
