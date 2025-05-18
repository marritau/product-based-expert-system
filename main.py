import tkinter as tk
import sqlite3
from tkinter import messagebox, font
import customtkinter as ctk
from analyzer import run_analysis
from process_composition import find_allergy

selected_instruments = []
custom_ingredients = []
user_survey_data = {}
allergy_warnings = []

def fetch_instruments():
    conn = sqlite3.connect('full_products_database.db')
    cursor = conn.cursor()
    cursor.execute("SELECT itemid, name, brand FROM merged_table")
    instruments = cursor.fetchall()
    conn.close()
    return instruments

#функция выбора состава
def add_instrument():
    global filtered_instruments
    instruments = fetch_instruments()

    select_window = ctk.CTkToplevel(root)
    select_window.title("Выберите средство")
    #сместить окно
    select_window.update_idletasks()
    width = 700
    height = 600
    screen_width = select_window.winfo_screenwidth()
    screen_height = select_window.winfo_screenheight()
    x = screen_width - width + 150
    y = (screen_height - height) // 2
    select_window.geometry(f"{width}x{height}+{x}+{y}")
    select_window.configure(bg="white")

    select_window.attributes("-topmost", 1)
    select_window.lift()

    search_label = ctk.CTkLabel(select_window, text="Поиск:", font=("Helvetica", 16, "bold"))
    search_label.pack(pady=10, anchor="w", padx=20)

    search_entry = ctk.CTkEntry(select_window, font=("Helvetica", 16))
    search_entry.pack(pady=10, anchor="w", padx=20)

    listbox = tk.Listbox(select_window, selectmode=tk.SINGLE, font=("Helvetica", 16), height=10)
    filtered_instruments = instruments[:]
    for instrument in instruments:
        itemid, name, brand = instrument
        listbox.insert(tk.END, f"{name} {brand}")
    listbox.pack(pady=10, fill=tk.BOTH, expand=True, padx=20)

    def search_instruments(event=None):
        global filtered_instruments
        query = search_entry.get().lower()
        listbox.delete(0, tk.END)
        filtered_instruments = [instrument for instrument in instruments if
                                query in instrument[1].lower() or query in instrument[2].lower()]

        # Заполняем listbox отфильтрованными элементами
        for instrument in filtered_instruments:
            itemid, name, brand = instrument
            listbox.insert(tk.END, f"{name} {brand}")

    # Привязываем функцию поиска к полю ввода
    search_entry.bind("<KeyRelease>", search_instruments)

    def on_select(event):
        selected_index = listbox.curselection()  # Получаем индекс выбранного элемента
        if selected_index:
            selected_instrument = filtered_instruments[selected_index[0]]  # Получаем весь элемент (itemid, name, brand)
            itemid, name, brand = selected_instrument
            add_selected_instrument((itemid, f"{name} {brand}"))

    # Привязываем обработчик к событию выбора
    listbox.bind("<ButtonRelease-1>", on_select)

    close_button = ctk.CTkButton(select_window, text="Закрыть", command=select_window.destroy)
    close_button.pack(pady=10)

def add_selected_instrument(instrument):
    itemid, name_brand = instrument
    selected_instruments.append((itemid, name_brand))
    label = ctk.CTkLabel(frame_selected, text=name_brand, width=200, height=30, anchor="center", font=("Helvetica", 12))
    label.pack(padx=5, pady=5, side=tk.TOP, anchor="w")
    update_analyze_button()

#функция добавления состава
def open_add_ingredient_window():
    add_window = ctk.CTkToplevel()
    add_window.title("Добавление составов")
    add_window.geometry("800x600")
    add_window.configure(bg="white")

    add_window.lift()
    add_window.attributes('-topmost', True)

    entries = []

    def add_entry_block():
        entry_frame = ctk.CTkFrame(scrollable_frame, fg_color="white")
        entry_frame.pack(pady=10, fill="x", padx=20)

        ctk.CTkLabel(entry_frame, text="Введите название:", font=("Helvetica", 14), text_color="black").pack(anchor="w")
        name_entry = ctk.CTkEntry(entry_frame, font=("Helvetica", 14), text_color="black", height=35)
        name_entry.pack(fill="x", pady=5)

        ctk.CTkLabel(entry_frame, text="Введите состав средства через знак разделения ',':", font=("Helvetica", 14), text_color="black").pack(anchor="w")
        comp_entry = ctk.CTkEntry(entry_frame, font=("Helvetica", 14), text_color="black", height=35)
        comp_entry.pack(fill="x", pady=5)

        entries.append((name_entry, comp_entry))

    def save_entries():
        for name_entry, comp_entry in entries:
            name = name_entry.get().strip()
            comp = comp_entry.get().strip()
            if name and comp:
                custom_ingredients.append((name, comp))
                ctk.CTkLabel(frame_selected, text=name, font=("Helvetica", 12), text_color="black").pack(padx=5, pady=5, anchor="w")
        #print(custom_ingredients)
        update_analyze_button()
        add_window.destroy()

    # Прокручиваемая область
    scrollable_frame = ctk.CTkScrollableFrame(add_window, fg_color="white")
    scrollable_frame.pack(fill="both", expand=True, padx=10, pady=60)  # оставляем место снизу и сверху

    # Кнопка "Добавить еще" — в правом верхнем углу
    add_more_button = ctk.CTkButton(
        add_window, text="Добавить ещё", command=add_entry_block,
        font=("Helvetica", 14), fg_color="pink", hover_color="lightpink", text_color="black"
    )
    add_more_button.place(relx=1.0, rely=0.0, anchor="ne", x=-20, y=20)

    # Кнопка "Сохранить" — по центру снизу
    save_button = ctk.CTkButton(
        add_window, text="Сохранить", command=save_entries,
        font=("Helvetica", 14), fg_color="pink", hover_color="lightpink", text_color="black"
    )
    save_button.pack(side="bottom", pady=20)

    # Добавим первую группу полей
    add_entry_block()

#функция открытия опроса
def open_survey_window():
    survey_win = ctk.CTkToplevel(root)
    survey_win.title("Опрос")
    survey_win.geometry("600x600")
    survey_win.attributes("-topmost", True)
    survey_win.configure(bg="white")
    # Тип кожи
    tk.Label(survey_win, text="Тип кожи:", font=("Helvetica", 20, "bold")).pack(anchor="w", padx=20, pady=(10, 0))
    skin_type = tk.StringVar(value="")
    skin_type.set(None)
    for option in ["Сухая", "Жирная", "Комбинированная"]:
        tk.Radiobutton(survey_win, text=option, font=("Helvetica", 20), variable=skin_type, value=option).pack(anchor="w", padx=40)

    sensitive_skin = tk.BooleanVar()
    tk.Checkbutton(survey_win, text="Чувствительная",font=("Helvetica", 20), variable=sensitive_skin).pack(anchor="w", padx=40)

    # Склонность
    tk.Label(survey_win, text="Склонность к:", font=("Helvetica", 20, "bold")).pack(anchor="w", padx=20, pady=(10, 0))
    tendencies = {
        "Воспаления": tk.BooleanVar(),
        "Акне": tk.BooleanVar(),
        "Расширенные поры": tk.BooleanVar(),
        "Шелушения": tk.BooleanVar(),
        "Пигментация": tk.BooleanVar(),
        "Возрастная кожа": tk.BooleanVar()
    }
    for label, var in tendencies.items():
        tk.Checkbutton(survey_win, text=label, font=("Helvetica", 20), variable=var).pack(anchor="w", padx=40)

    # Косметические процедуры
    tk.Label(survey_win, text="Проходили косметические процедуры?", font=("Helvetica", 20, "bold")).pack(anchor="w", padx=20, pady=(10, 0))
    procedure_answer = tk.StringVar(value="Нет")

    procedure_details_frame = tk.Frame(survey_win, bg=survey_win.cget("bg"))
    def toggle_procedure_details():
        if procedure_answer.get() == "Да":
            procedure_details_frame.pack(anchor="w", padx=40, pady=(5, 10))
        else:
            procedure_details_frame.forget()

    tk.Radiobutton(survey_win, text="Да", font=("Helvetica", 20), variable=procedure_answer, value="Да", command=toggle_procedure_details).pack(anchor="w", padx=40)
    tk.Radiobutton(survey_win, text="Нет", font=("Helvetica", 20), variable=procedure_answer, value="Нет", command=toggle_procedure_details).pack(anchor="w", padx=40)

    tk.Label(procedure_details_frame, text="Какие процедуры это были?", font=("Helvetica", 20)).pack(anchor="w", pady=(10, 0))

    procedure_types_frame = tk.Frame(procedure_details_frame, bg=survey_win.cget("bg"))
    procedure_types_frame.pack(anchor="w", pady=5)

    inj_var = tk.BooleanVar()
    peel_var = tk.BooleanVar()
    clean_var = tk.BooleanVar()

    tk.Checkbutton(procedure_types_frame, text="Инъекции", font=("Helvetica", 20), variable=inj_var,
                   bg=survey_win.cget("bg")).pack(side="left", padx=5)
    tk.Checkbutton(procedure_types_frame, text="Пилинг", font=("Helvetica", 20), variable=peel_var,
                   bg=survey_win.cget("bg")).pack(side="left", padx=5)
    tk.Checkbutton(procedure_types_frame, text="Механическая чистка", font=("Helvetica", 20), variable=clean_var,
                   bg=survey_win.cget("bg")).pack(side="left", padx=5)

    # Поле "другое"
    tk.Label(procedure_types_frame, text="Другое:", font=("Helvetica", 20)).pack(anchor="w")
    other_procedure_entry = tk.Entry(procedure_types_frame, font=("Helvetica", 20))
    other_procedure_entry.pack(fill="x", pady=(0, 5))

    # Аллергии
    tk.Label(survey_win, text="Есть ли аллергия на компоненты?", font=("Helvetica", 20, "bold")).pack(anchor="w", padx=20, pady=(10, 0))
    allergy_answer = tk.StringVar(value="Нет")
    allergy_input = tk.StringVar()

    allergy_frame = tk.Frame(survey_win, bg=survey_win.cget("bg"))

    tk.Label(allergy_frame, text="Введите свои аллергии на русском через знак разделения ;",
             font=("Helvetica", 20)).pack(anchor="w")
    allergy_entry = tk.Entry(allergy_frame, textvariable=allergy_input, font=("Helvetica", 20))
    allergy_entry.pack(fill="x", pady=(0, 5))

    def toggle_allergy_input():
        if allergy_answer.get() == "Да":
            allergy_frame.pack(fill="x", padx=40, pady=5)
        else:
            allergy_frame.forget()

    tk.Radiobutton(survey_win, text="Да", font=("Helvetica", 20), variable=allergy_answer, value="Да",
                   command=toggle_allergy_input).pack(anchor="w", padx=40)
    tk.Radiobutton(survey_win, text="Нет", font=("Helvetica", 20), variable=allergy_answer, value="Нет",
                   command=toggle_allergy_input).pack(anchor="w", padx=40)

    # Кнопка "Сохранить"
    def save_survey():
        user_survey_data["skin_type"] = skin_type.get()
        user_survey_data["sensitive"] = sensitive_skin.get()
        user_survey_data["tendencies"] = [label for label, var in tendencies.items() if var.get()]
        user_survey_data["had_procedure"] = procedure_answer.get()
        user_survey_data["procedure_types"] = {
            "Инъекции": inj_var.get(),
            "Пилинг": peel_var.get(),
            "Механическая чистка": clean_var.get(),
            "Другое": other_procedure_entry.get()
        }
        user_survey_data["has_allergy"] = allergy_answer.get()
        user_survey_data["allergy_components"] = allergy_input.get() if allergy_answer.get() == "Да" else None
        survey_win.destroy()
        print("Опрос сохранен:", user_survey_data)

    ctk.CTkButton(
        survey_win,
        text="Сохранить",
        command=save_survey,
        fg_color="#f4c2c2",  # бледно-розовый
        text_color="black",
        corner_radius=20,
        font=("Helvetica", 20)
    ).pack(side="bottom", pady=20)

def update_analyze_button():
    children = frame_selected.winfo_children()
    label_count = sum(1 for child in children if isinstance(child, (tk.Label, ctk.CTkLabel)))

    if label_count >= 2:
        analyze_button.configure(state=tk.NORMAL)
        validation_label.configure(text="")
    else:
        analyze_button.configure(state=tk.DISABLED)
        validation_label.configure(text="Выберите минимум два средства для анализа", text_color="red")


def analyze():
    collect_additional_info()
    selected_widgets = frame_selected.winfo_children()
    if len(selected_widgets) < 2:
        messagebox.showwarning("Ошибка", "Не выбрано достаточно средств для анализа.")
        return

    if "allergy_components" in user_survey_data and user_survey_data["allergy_components"]:
        allergy_components = [comp.strip() for comp in user_survey_data["allergy_components"].split(",") if
                              comp.strip()]

        if allergy_components:
            allergy_warnings = find_allergy(selected_instruments, custom_ingredients, allergy_components)

    # Вызов основной функции анализа с текущими данными
    pairwise_comparison_results, user_comparison_results, banned_results = run_analysis(selected_instruments, custom_ingredients, user_survey_data)
    show_pairwise_matrix(pairwise_comparison_results, user_comparison_results, banned_results, allergy_warnings)
def show_pairwise_matrix(pairwise_results, user_results, banned_results, allergy_warnings):
    # Соберем уникальные имена продуктов
    names = sorted(set(
        [res['name_1'] for res in pairwise_results] +
        [res['name_2'] for res in pairwise_results]
    ))

    # Строим матрицу: словарь (name_1, name_2) -> info
    result_dict = {}
    for res in pairwise_results:
        key = (res['name_1'], res['name_2'])
        result_dict[key] = res

    user_result_map = {res['name']: res for res in user_results}
    banned_map = {res['name']: res for res in banned_results}

    allergy_map = {}
    if allergy_warnings:
        for warning in allergy_warnings:
            allergy_map[warning["name"]] = warning["result"]

    matrix_window = tk.Toplevel()
    matrix_window.title("Сравнение продуктов")
    matrix_window.geometry("1200x700")

    cell_font = ("Helvetica", 18)
    header_font = ("Helvetica", 14, "bold")
    for i in range(len(names) + 1):
        matrix_window.grid_columnconfigure(i, weight=1)
        matrix_window.grid_rowconfigure(i, weight=1)

    # Заголовок первой строки
    tk.Label(matrix_window, text="", padx=10, pady=10).grid(row=0, column=0)
    bg_color = matrix_window.cget("bg")
    # остальные заголовки
    def make_header_callback(name, allergy_text=None):
        def show_product_info():
            banned_data = banned_map.get(name, {})
            banned_result = banned_data.get("result", [])
            banned_info = banned_data.get("info", [])

            data = user_result_map.get(name, {})
            result_vals = data.get("result", [])
            info_vals = data.get("info", [])

            text_parts = []
            if banned_result and "-1" in banned_result and banned_info:
                banned_text = "\n".join(f"- {info}" for info in banned_info)
                text_parts.append(banned_text)

            if allergy_text:
                text_parts.append(f"{allergy_text}")

            if not info_vals and not banned_info and not allergy_text:
                messagebox.showinfo(name, "Нет дополнительной информации")
                return
            sections = {"-1": [], "0": [], "1": []}
            for res, info in zip(result_vals, info_vals):
                if res in sections:
                    parts = info.split(",", 1)  # Убираем префикс
                    if len(parts) == 2:
                        sections[res].append(parts[1].strip())
                    else:
                        sections[res].append(info.strip())

            if sections["-1"]:
                text_parts.append("Минусы:\n" + "\n".join(f"- {t}" for t in sections["-1"]))
            if sections["1"]:
                text_parts.append("Плюсы:\n" + "\n".join(f"- {t}" for t in sections["1"]))
            if sections["0"]:
                text_parts.append("Внимание:\n" + "\n".join(f"- {t}" for t in sections["0"]))

            messagebox.showinfo(name, "\n\n".join(text_parts))
            matrix_window.lift()
            matrix_window.focus_force()

        return show_product_info

    for j, name in enumerate(names):
        banned_data = banned_map.get(name, {})
        banned_result = banned_data.get("result", [])
        if banned_result and "-1" in banned_result:
            bg_color = "#ffb0b0"
        if name in allergy_map:
            bg_color = "#ff4c4c"
        allergy_text = allergy_map.get(name)
        tk.Button(matrix_window, text=name, wraplength=180, padx=15, pady=15,
                  bg=bg_color, font=header_font, command=make_header_callback(name, allergy_text)).grid(row=0, column=j + 1,
                                                                                           sticky="nsew")

    # Заполнение таблицы
    for i, name_i in enumerate(names):
        # Заголовок строки
        tk.Label(matrix_window, text=name_i, wraplength=180, padx=15, pady=15, bg="#f0f0f0", font=header_font).grid(row=i+1, column=0, sticky="nsew")
        for j, name_j in enumerate(names):
            if i == j:
                tk.Label(matrix_window, text="", width=10).grid(row=i+1, column=j+1)
                continue

            # Проверим оба варианта пары (так как порядок может быть любой)
            res = result_dict.get((name_i, name_j)) or result_dict.get((name_j, name_i))
            if res:
                final = res['final_result']
                info_list = res.get('info', [])
                cleaned_info = [info.replace('\n', ' ').strip() for info in info_list]
                if not cleaned_info:
                    cleaned_info = ["Нет рекомендаций по использованию"]
                def make_callback(info_list):
                    cleaned_info = list(dict.fromkeys(info.strip() for info in info_list))
                    def show_info():
                        messagebox.showinfo("Детали взаимодействия", "\n".join(f"{idx+1}. {info}" for idx, info in enumerate(cleaned_info)))
                        matrix_window.lift()
                        matrix_window.focus_force()
                    return show_info

                if final == '0':
                    btn = tk.Button(matrix_window, text="!", bg="#fff8b0", font=cell_font, command=make_callback(cleaned_info), width=6, height=2)
                elif final == '1' or final == None :
                    btn = tk.Button(matrix_window, text="✓", bg="#b0ffb0", font=cell_font,
                                    command=make_callback(cleaned_info), width=6, height=2)
                elif final == '-1':
                    btn = tk.Button(matrix_window, text="✗", bg="#ffb0b0", font=cell_font,
                                    command=make_callback(cleaned_info), width=6, height=2)
                else:
                    btn = tk.Label(matrix_window, text="", width=6)

                btn.grid(row=i+1, column=j+1, padx=4, pady=4, sticky="nsew")
            else:
                tk.Label(matrix_window, text="", width=10).grid(row=i+1, column=j+1, sticky="nsew")

    matrix_window.mainloop()


root = ctk.CTk()
root.title("Программа для анализа")

root.geometry(f"{root.winfo_screenwidth()}x{root.winfo_screenheight()}")

ctk.set_appearance_mode("light")

label = ctk.CTkLabel(root, text="Привет, выбери средства, которые хочешь проанализировать:", font=("Helvetica", 14, "bold"))
label.pack(pady=20, anchor="w", padx=20)

button_frame = ctk.CTkFrame(root)
button_frame.pack(pady=10, anchor="w", padx=20)

# Кнопка "Выбрать из списка"
select_button = ctk.CTkButton(button_frame, text="Выбрать из списка", command=add_instrument, font=("Helvetica", 12, "bold"), width=150, height=40, fg_color="pink", hover_color="lightpink", text_color="black", border_width=2, border_color="gray")
select_button.grid(row=0, column=0, padx=10)

# Кнопка "Добавить состав средства"
add_ingredient_button = ctk.CTkButton(button_frame, text="Добавить состав средства", command=open_add_ingredient_window, font=("Helvetica", 12, "bold"), width=200, height=40, fg_color="pink", hover_color="lightpink", text_color="black", border_width=2, border_color="gray")
add_ingredient_button.grid(row=0, column=1, padx=10)

# Кнопка "Пройти опрос"
survey_button = ctk.CTkButton(button_frame, text="Пройти опрос", command=open_survey_window, font=("Helvetica", 12, "bold"), width=150, height=40, hover_color="lavender", fg_color="#E0D3F1", text_color="black", border_width=2, border_color="gray")
survey_button.grid(row=0, column=2, padx=10)

# Контейнер для выбранных средств
frame_selected = ctk.CTkFrame(root)
frame_selected.pack(pady=20, anchor="w", padx=20)

# Дополнительные сведения
additional_frame = ctk.CTkFrame(root, fg_color="transparent")
additional_frame.place(x=500, y=150)
ctk.CTkLabel(additional_frame, text="Дополнительные сведения:", font=("Helvetica", 12, "bold")).pack(anchor="w", padx=5, pady=(5, 5))
ctk.CTkLabel(additional_frame, text="Учитывать данные о погоде:", font=("Helvetica", 12)).pack(anchor="w", padx=5, pady=(0, 5))

# Рамка для погодных чекбоксов в один ряд
weather_frame = ctk.CTkFrame(additional_frame, fg_color="transparent")
weather_frame.pack(anchor="w", padx=5, pady=(0, 10))

weather_options = {
    "Солнечная": tk.BooleanVar(),
    "Теплая": tk.BooleanVar(),
    "Пасмурная": tk.BooleanVar(),
    "Холодная": tk.BooleanVar()
}

for label, var in weather_options.items():
    ctk.CTkCheckBox(weather_frame, text=label, variable=var, font=("Helvetica", 12), hover_color="lavender", fg_color="#E0D3F1").pack(side="left", padx=5)

makeup_var = tk.StringVar(value="")
makeup_var.set(None)
radio_frame = tk.Frame(additional_frame, bg=additional_frame.master.cget("bg"))
radio_frame.pack(anchor="w", padx=5, pady=(0, 10))

tk.Label(radio_frame, text="Использую декоративную косметику:", font=("Helvetica", 16),
         bg=radio_frame.cget("bg")).pack(anchor="w", padx=0, pady=(0, 5))

ctk.CTkRadioButton(radio_frame, text="Да", variable=makeup_var, value="Да",
                   font=("Helvetica", 12), hover_color="lavender", fg_color="#E0D3F1", height=35, width=200).pack(side="left", padx=10)
ctk.CTkRadioButton(radio_frame, text="Нет", variable=makeup_var, value="Нет",
                   font=("Helvetica", 12), hover_color="lavender", fg_color="#E0D3F1", height=35, width=200).pack(side="left", padx=10)

# Сбор данных
def collect_additional_info():
    user_survey_data["weather"] = [k for k, v in weather_options.items() if v.get()]
    user_survey_data["makeup"] = makeup_var.get()

analyze_button = ctk.CTkButton(root, text="Анализировать", command=analyze, state=tk.DISABLED, font=("Helvetica", 12, "bold"), width=150, height=40, fg_color="pink", hover_color="lightpink", text_color="black", border_width=2, border_color="gray")
analyze_button.pack(pady=10, anchor="w", padx=20)

# Сообщение, если не выбрано минимум два средства
validation_label = ctk.CTkLabel(root, text="Выберите минимум два средства для анализа", text_color="red", font=("Helvetica", 10))
validation_label.pack(pady=10, anchor="w", padx=20)

# # Метка для отображения результата
# result_label = ctk.CTkLabel(root, text="", font=("Helvetica", 12, "bold"), width=150, height=30)
# result_label.pack(pady=10, anchor="w", padx=20)

root.mainloop()