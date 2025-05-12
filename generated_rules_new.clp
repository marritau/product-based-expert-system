;; Глобальные переменные для подсчёта результатов
(defglobal ?*count_neg1* = 0)
(defglobal ?*count_0* = 0)
(defglobal ?*count_1* = 0)

(defrule правило_1
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Niacinamide 2–5 %"))
        (and (first_element "Niacinamide 2–5 %") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_2
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Niacinamide > 5 %"))
        (and (first_element "Niacinamide > 5 %") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_3
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "nicotinamide"))
        (and (first_element "nicotinamide") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_4
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Vitamin C Ascorbic Acid ≤ 5 %: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_5
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Ascorbic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_6
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_7
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Ascorbic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_8
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_9
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_10
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_11
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_12
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_13
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_14
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_15
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_16
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_17
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_18
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_19
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_20
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_21
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_22
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_23
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_24
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_25
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_26
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_27
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_28
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_29
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и ВНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_30
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_31
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и salicylic acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_32
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и salicylic: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_33
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и AНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_34
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Lactic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_35
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Glycolic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_36
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_37
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide 2–5 % и cyclandelate: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_38
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_39
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_40
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_41
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_42
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Niacinamide 2–5 % и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_43
    (or
        (and (first_element "Niacinamide 2–5 %") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Niacinamide 2–5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Niacinamide 2–5 % и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_44
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Niacinamide > 5 %"))
        (and (first_element "Niacinamide > 5 %") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Niacinamide > 5 %: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_45
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "nicotinamide"))
        (and (first_element "nicotinamide") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и nicotinamide: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_46
    (or
        (and (first_element "nicotinamide") (second_element "Niacinamide > 5 %"))
        (and (first_element "Niacinamide > 5 %") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Niacinamide > 5 %: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_47
    (or
        (and (first_element "nicotinamide") (second_element "nicotinamide"))
        (and (first_element "nicotinamide") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и nicotinamide: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_48
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Vitamin C Ascorbic Acid ≤ 5 %: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_49
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Ascorbic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_50
    (or
        (and (first_element "nicotinamide") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Vitamin C Ascorbic Acid ≤ 5 %: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_51
    (or
        (and (first_element "nicotinamide") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Ascorbic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_52
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Niacinamide > 5 % и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Отрицательное взаимодействие"))
)

(defrule правило_53
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Niacinamide > 5 % и Ascorbic Acid: Отрицательное взаимодействие"))
)

(defrule правило_54
    (or
        (and (first_element "nicotinamide") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "nicotinamide"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание nicotinamide и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Отрицательное взаимодействие"))
)

(defrule правило_55
    (or
        (and (first_element "nicotinamide") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание nicotinamide и Ascorbic Acid: Отрицательное взаимодействие"))
)

(defrule правило_56
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Vitamin C: Есть ограничения по взаимодействию, !"))
)

(defrule правило_57
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Ascorbyl Glucoside: Есть ограничения по взаимодействию, !"))
)

(defrule правило_58
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_59
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_60
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_61
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_62
    (or
        (and (first_element "nicotinamide") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Vitamin C: Есть ограничения по взаимодействию, !"))
)

(defrule правило_63
    (or
        (and (first_element "nicotinamide") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Ascorbyl Glucoside: Есть ограничения по взаимодействию, !"))
)

(defrule правило_64
    (or
        (and (first_element "nicotinamide") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_65
    (or
        (and (first_element "nicotinamide") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_66
    (or
        (and (first_element "nicotinamide") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_67
    (or
        (and (first_element "nicotinamide") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_68
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Blue Retinol Bakuchiol: Есть ограничения по взаимодействию, !"))
)

(defrule правило_69
    (or
        (and (first_element "nicotinamide") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Blue Retinol Bakuchiol: Есть ограничения по взаимодействию, !"))
)

(defrule правило_70
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinol: Есть ограничения по взаимодействию, !"))
)

(defrule правило_71
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinol Acetate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_72
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinol Palmitate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_73
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinal: Есть ограничения по взаимодействию, !"))
)

(defrule правило_74
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinyl Propionate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_75
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinol Retinoate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_76
    (or
        (and (first_element "nicotinamide") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinol: Есть ограничения по взаимодействию, !"))
)

(defrule правило_77
    (or
        (and (first_element "nicotinamide") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinol Acetate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_78
    (or
        (and (first_element "nicotinamide") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinol Palmitate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_79
    (or
        (and (first_element "nicotinamide") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinal: Есть ограничения по взаимодействию, !"))
)

(defrule правило_80
    (or
        (and (first_element "nicotinamide") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinyl Propionate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_81
    (or
        (and (first_element "nicotinamide") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinol Retinoate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_82
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !"))
)

(defrule правило_83
    (or
        (and (first_element "nicotinamide") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !"))
)

(defrule правило_84
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Azelaic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_85
    (or
        (and (first_element "nicotinamide") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Azelaic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_86
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_87
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_88
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_89
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_90
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_91
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_92
    (or
        (and (first_element "nicotinamide") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_93
    (or
        (and (first_element "nicotinamide") (second_element "EGF"))
        (and (first_element "EGF") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_94
    (or
        (and (first_element "nicotinamide") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_95
    (or
        (and (first_element "nicotinamide") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_96
    (or
        (and (first_element "nicotinamide") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_97
    (or
        (and (first_element "nicotinamide") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_98
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и ВНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_99
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_100
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и salicylic acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_101
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и salicylic: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_102
    (or
        (and (first_element "nicotinamide") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и ВНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_103
    (or
        (and (first_element "nicotinamide") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_104
    (or
        (and (first_element "nicotinamide") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и salicylic acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_105
    (or
        (and (first_element "nicotinamide") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и salicylic: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_106
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и AНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_107
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Lactic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_108
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Glycolic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_109
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_110
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и cyclandelate: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_111
    (or
        (and (first_element "nicotinamide") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и AНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_112
    (or
        (and (first_element "nicotinamide") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Lactic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_113
    (or
        (and (first_element "nicotinamide") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Glycolic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_114
    (or
        (and (first_element "nicotinamide") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_115
    (or
        (and (first_element "nicotinamide") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и cyclandelate: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_116
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и РНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_117
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Lactobionic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_118
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_119
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Niacinamide > 5 % и Gluconolactone: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_120
    (or
        (and (first_element "nicotinamide") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и РНА-acids: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_121
    (or
        (and (first_element "nicotinamide") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Lactobionic Acid: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_122
    (or
        (and (first_element "nicotinamide") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_123
    (or
        (and (first_element "nicotinamide") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "nicotinamide"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание nicotinamide и Gluconolactone: Есть ограничения по взаимодействию, !
Без разогревающих
процедур"))
)

(defrule правило_124
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Niacinamide > 5 % и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_125
    (or
        (and (first_element "Niacinamide > 5 %") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Niacinamide > 5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Niacinamide > 5 % и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_126
    (or
        (and (first_element "nicotinamide") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание nicotinamide и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_127
    (or
        (and (first_element "nicotinamide") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "nicotinamide"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание nicotinamide и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_128
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Vitamin C Ascorbic Acid ≤ 5 %: Есть ограничения по взаимодействию, !"))
)

(defrule правило_129
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_130
    (or
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Vitamin C Ascorbic Acid ≤ 5 %: Есть ограничения по взаимодействию, !"))
)

(defrule правило_131
    (or
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_132
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_133
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Ascorbic Acid: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_134
    (or
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_135
    (or
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Ascorbic Acid: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_136
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Vitamin C: Есть ограничения по взаимодействию, !"))
)

(defrule правило_137
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Ascorbyl Glucoside: Есть ограничения по взаимодействию, !"))
)

(defrule правило_138
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_139
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_140
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_141
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_142
    (or
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Vitamin C: Есть ограничения по взаимодействию, !"))
)

(defrule правило_143
    (or
        (and (first_element "Ascorbic Acid") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Ascorbyl Glucoside: Есть ограничения по взаимодействию, !"))
)

(defrule правило_144
    (or
        (and (first_element "Ascorbic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_145
    (or
        (and (first_element "Ascorbic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию, !"))
)

(defrule правило_146
    (or
        (and (first_element "Ascorbic Acid") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_147
    (or
        (and (first_element "Ascorbic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию, !"))
)

(defrule правило_148
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_149
    (or
        (and (first_element "Ascorbic Acid") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_150
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinol: Отрицательное взаимодействие"))
)

(defrule правило_151
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinol Acetate: Отрицательное взаимодействие"))
)

(defrule правило_152
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinol Palmitate: Отрицательное взаимодействие"))
)

(defrule правило_153
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinal: Отрицательное взаимодействие"))
)

(defrule правило_154
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinyl Propionate: Отрицательное взаимодействие"))
)

(defrule правило_155
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinol Retinoate: Отрицательное взаимодействие"))
)

(defrule правило_156
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol: Отрицательное взаимодействие"))
)

(defrule правило_157
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Acetate: Отрицательное взаимодействие"))
)

(defrule правило_158
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Palmitate: Отрицательное взаимодействие"))
)

(defrule правило_159
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinal: Отрицательное взаимодействие"))
)

(defrule правило_160
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinyl Propionate: Отрицательное взаимодействие"))
)

(defrule правило_161
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Retinoate: Отрицательное взаимодействие"))
)

(defrule правило_162
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %"))
)

(defrule правило_163
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %"))
)

(defrule правило_164
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_165
    (or
        (and (first_element "Ascorbic Acid") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_166
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_167
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_168
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_169
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_170
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_171
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_172
    (or
        (and (first_element "Ascorbic Acid") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_173
    (or
        (and (first_element "Ascorbic Acid") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_174
    (or
        (and (first_element "Ascorbic Acid") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_175
    (or
        (and (first_element "Ascorbic Acid") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_176
    (or
        (and (first_element "Ascorbic Acid") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_177
    (or
        (and (first_element "Ascorbic Acid") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_178
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_179
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_180
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_181
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_182
    (or
        (and (first_element "Ascorbic Acid") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_183
    (or
        (and (first_element "Ascorbic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_184
    (or
        (and (first_element "Ascorbic Acid") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_185
    (or
        (and (first_element "Ascorbic Acid") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_186
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и AНА-acids: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_187
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Lactic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_188
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Glycolic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_189
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_190
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и cyclandelate: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_191
    (or
        (and (first_element "Ascorbic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и AНА-acids: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_192
    (or
        (and (first_element "Ascorbic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Lactic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_193
    (or
        (and (first_element "Ascorbic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Glycolic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_194
    (or
        (and (first_element "Ascorbic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_195
    (or
        (and (first_element "Ascorbic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и cyclandelate: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_196
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и РНА-acids: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_197
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Lactobionic Acid: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_198
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_199
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Gluconolactone: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_200
    (or
        (and (first_element "Ascorbic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и РНА-acids: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_201
    (or
        (and (first_element "Ascorbic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_202
    (or
        (and (first_element "Ascorbic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_203
    (or
        (and (first_element "Ascorbic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_204
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_205
    (or
        (and (first_element "Vitamin C Ascorbic Acid ≤ 5 %") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Vitamin C Ascorbic Acid ≤ 5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid ≤ 5 % и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_206
    (or
        (and (first_element "Ascorbic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_207
    (or
        (and (first_element "Ascorbic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_208
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_209
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Ascorbic Acid: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_210
    (or
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Vitamin C Ascorbic Acid > 5 % рН ≤ 4: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_211
    (or
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
        (and (first_element "Ascorbic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Ascorbic Acid: Есть ограничения по взаимодействию, !
Суммарно Ascorbic Acid
≤ 10 %"))
)

(defrule правило_212
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Vitamin C: Есть ограничения по взаимодействию"))
)

(defrule правило_213
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Ascorbyl Glucoside: Есть ограничения по взаимодействию"))
)

(defrule правило_214
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию"))
)

(defrule правило_215
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию"))
)

(defrule правило_216
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию"))
)

(defrule правило_217
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию"))
)

(defrule правило_218
    (or
        (and (first_element "Ascorbic Acid") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Vitamin C: Есть ограничения по взаимодействию"))
)

(defrule правило_219
    (or
        (and (first_element "Ascorbic Acid") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Ascorbyl Glucoside: Есть ограничения по взаимодействию"))
)

(defrule правило_220
    (or
        (and (first_element "Ascorbic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Magnesium Ascorbyl Phosphate: Есть ограничения по взаимодействию"))
)

(defrule правило_221
    (or
        (and (first_element "Ascorbic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и 3-O-Ethyl Ascorbic Acid: Есть ограничения по взаимодействию"))
)

(defrule правило_222
    (or
        (and (first_element "Ascorbic Acid") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Sodium Ascorbyl Phosphate: Есть ограничения по взаимодействию"))
)

(defrule правило_223
    (or
        (and (first_element "Ascorbic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Tetrahexyldecyl Ascorbate: Есть ограничения по взаимодействию"))
)

(defrule правило_224
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_225
    (or
        (and (first_element "Ascorbic Acid") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_226
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinol: Отрицательное взаимодействие"))
)

(defrule правило_227
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinol Acetate: Отрицательное взаимодействие"))
)

(defrule правило_228
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinol Palmitate: Отрицательное взаимодействие"))
)

(defrule правило_229
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinal: Отрицательное взаимодействие"))
)

(defrule правило_230
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinyl Propionate: Отрицательное взаимодействие"))
)

(defrule правило_231
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinol Retinoate: Отрицательное взаимодействие"))
)

(defrule правило_232
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol: Отрицательное взаимодействие"))
)

(defrule правило_233
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Acetate: Отрицательное взаимодействие"))
)

(defrule правило_234
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Palmitate: Отрицательное взаимодействие"))
)

(defrule правило_235
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinal: Отрицательное взаимодействие"))
)

(defrule правило_236
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinyl Propionate: Отрицательное взаимодействие"))
)

(defrule правило_237
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol Retinoate: Отрицательное взаимодействие"))
)

(defrule правило_238
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_239
    (or
        (and (first_element "Ascorbic Acid") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Ascorbic Acid и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_240
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Azelaic Acid: Есть ограничения по взаимодействию, !
Azelaic Acid ≤ 10 %"))
)

(defrule правило_241
    (or
        (and (first_element "Ascorbic Acid") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Azelaic Acid: Есть ограничения по взаимодействию, !
Azelaic Acid ≤ 10 %"))
)

(defrule правило_242
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_243
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_244
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_245
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_246
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_247
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_248
    (or
        (and (first_element "Ascorbic Acid") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_249
    (or
        (and (first_element "Ascorbic Acid") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_250
    (or
        (and (first_element "Ascorbic Acid") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_251
    (or
        (and (first_element "Ascorbic Acid") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_252
    (or
        (and (first_element "Ascorbic Acid") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_253
    (or
        (and (first_element "Ascorbic Acid") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_254
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_255
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_256
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_257
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_258
    (or
        (and (first_element "Ascorbic Acid") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_259
    (or
        (and (first_element "Ascorbic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_260
    (or
        (and (first_element "Ascorbic Acid") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_261
    (or
        (and (first_element "Ascorbic Acid") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
при ВНА ≤ 0,5 %"))
)

(defrule правило_262
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и AНА-acids: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_263
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Lactic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_264
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Glycolic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_265
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_266
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и cyclandelate: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_267
    (or
        (and (first_element "Ascorbic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и AНА-acids: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_268
    (or
        (and (first_element "Ascorbic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Lactic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_269
    (or
        (and (first_element "Ascorbic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Glycolic Acid: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_270
    (or
        (and (first_element "Ascorbic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_271
    (or
        (and (first_element "Ascorbic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и cyclandelate: Есть ограничения по взаимодействию, !
АНА ≤ 2 %"))
)

(defrule правило_272
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и РНА-acids: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_273
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Lactobionic Acid: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_274
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_275
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Gluconolactone: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_276
    (or
        (and (first_element "Ascorbic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и РНА-acids: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_277
    (or
        (and (first_element "Ascorbic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_278
    (or
        (and (first_element "Ascorbic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_279
    (or
        (and (first_element "Ascorbic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
РНА ≤ 2 %"))
)

(defrule правило_280
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_281
    (or
        (and (first_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Vitamin C Ascorbic Acid > 5 % рН ≤ 4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C Ascorbic Acid > 5 % рН ≤ 4 и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_282
    (or
        (and (first_element "Ascorbic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_283
    (or
        (and (first_element "Ascorbic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_284
    (or
        (and (first_element "Vitamin C") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_285
    (or
        (and (first_element "Vitamin C") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_286
    (or
        (and (first_element "Vitamin C") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_287
    (or
        (and (first_element "Vitamin C") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_288
    (or
        (and (first_element "Vitamin C") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_289
    (or
        (and (first_element "Vitamin C") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_290
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_291
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_292
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_293
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_294
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_295
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_296
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_297
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_298
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_299
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_300
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_301
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_302
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_303
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_304
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_305
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_306
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_307
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_308
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_309
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_310
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_311
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_312
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_313
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_314
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Vitamin C"))
        (and (first_element "Vitamin C") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_315
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Ascorbyl Glucoside"))
        (and (first_element "Ascorbyl Glucoside") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_316
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Magnesium Ascorbyl Phosphate"))
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_317
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "3-O-Ethyl Ascorbic Acid"))
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_318
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Sodium Ascorbyl Phosphate"))
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_319
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Tetrahexyldecyl Ascorbate"))
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_320
    (or
        (and (first_element "Vitamin C") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_321
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_322
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_323
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_324
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_325
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_326
    (or
        (and (first_element "Vitamin C") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_327
    (or
        (and (first_element "Vitamin C") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_328
    (or
        (and (first_element "Vitamin C") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_329
    (or
        (and (first_element "Vitamin C") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_330
    (or
        (and (first_element "Vitamin C") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_331
    (or
        (and (first_element "Vitamin C") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_332
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_333
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_334
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_335
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_336
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_337
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_338
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_339
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_340
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_341
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_342
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_343
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_344
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_345
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_346
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_347
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_348
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_349
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_350
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_351
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_352
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_353
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_354
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_355
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_356
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_357
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_358
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_359
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_360
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_361
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_362
    (or
        (and (first_element "Vitamin C") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Vitamin C"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Vitamin C и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_363
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Ascorbyl Glucoside и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_364
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Magnesium Ascorbyl Phosphate и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_365
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание 3-O-Ethyl Ascorbic Acid и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_366
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Sodium Ascorbyl Phosphate и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_367
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Tetrahexyldecyl Ascorbate и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_368
    (or
        (and (first_element "Vitamin C") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_369
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_370
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_371
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_372
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_373
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_374
    (or
        (and (first_element "Vitamin C") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_375
    (or
        (and (first_element "Vitamin C") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_376
    (or
        (and (first_element "Vitamin C") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_377
    (or
        (and (first_element "Vitamin C") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_378
    (or
        (and (first_element "Vitamin C") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_379
    (or
        (and (first_element "Vitamin C") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_380
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_381
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_382
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_383
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_384
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_385
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_386
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_387
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_388
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_389
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_390
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_391
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_392
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_393
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "EGF"))
        (and (first_element "EGF") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_394
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_395
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_396
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_397
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_398
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_399
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_400
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_401
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_402
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_403
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_404
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_405
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_406
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_407
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_408
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_409
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_410
    (or
        (and (first_element "Vitamin C") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_411
    (or
        (and (first_element "Vitamin C") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_412
    (or
        (and (first_element "Vitamin C") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_413
    (or
        (and (first_element "Vitamin C") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_414
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_415
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_416
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_417
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_418
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_419
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_420
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_421
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_422
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_423
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_424
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_425
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_426
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_427
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_428
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_429
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_430
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_431
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_432
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_433
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_434
    (or
        (and (first_element "Vitamin C") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_435
    (or
        (and (first_element "Vitamin C") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_436
    (or
        (and (first_element "Vitamin C") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_437
    (or
        (and (first_element "Vitamin C") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_438
    (or
        (and (first_element "Vitamin C") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_439
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_440
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_441
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_442
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_443
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_444
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_445
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_446
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_447
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_448
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_449
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_450
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_451
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_452
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_453
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_454
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_455
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_456
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_457
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_458
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_459
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_460
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_461
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_462
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_463
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_464
    (or
        (and (first_element "Vitamin C") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_465
    (or
        (and (first_element "Vitamin C") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_466
    (or
        (and (first_element "Vitamin C") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_467
    (or
        (and (first_element "Vitamin C") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_468
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_469
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_470
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_471
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_472
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_473
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_474
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_475
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_476
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_477
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_478
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_479
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_480
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_481
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_482
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_483
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_484
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_485
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_486
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_487
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_488
    (or
        (and (first_element "Vitamin C") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_489
    (or
        (and (first_element "Vitamin C") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Vitamin C"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Vitamin C и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_490
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbyl Glucoside и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_491
    (or
        (and (first_element "Ascorbyl Glucoside") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Ascorbyl Glucoside"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Ascorbyl Glucoside и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_492
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Magnesium Ascorbyl Phosphate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_493
    (or
        (and (first_element "Magnesium Ascorbyl Phosphate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Magnesium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Magnesium Ascorbyl Phosphate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_494
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание 3-O-Ethyl Ascorbic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_495
    (or
        (and (first_element "3-O-Ethyl Ascorbic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "3-O-Ethyl Ascorbic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание 3-O-Ethyl Ascorbic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_496
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Sodium Ascorbyl Phosphate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_497
    (or
        (and (first_element "Sodium Ascorbyl Phosphate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Sodium Ascorbyl Phosphate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Sodium Ascorbyl Phosphate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_498
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Tetrahexyldecyl Ascorbate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_499
    (or
        (and (first_element "Tetrahexyldecyl Ascorbate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Tetrahexyldecyl Ascorbate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Tetrahexyldecyl Ascorbate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_500
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Blue Retinol Bakuchiol"))
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_501
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_502
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_503
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_504
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_505
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_506
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_507
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_508
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_509
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_510
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_511
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_512
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_513
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_514
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_515
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_516
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_517
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_518
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_519
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_520
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_521
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_522
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_523
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_524
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_525
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_526
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_527
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_528
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Blue Retinol Bakuchiol и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_529
    (or
        (and (first_element "Blue Retinol Bakuchiol") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Blue Retinol Bakuchiol"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Blue Retinol Bakuchiol и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_530
    (or
        (and (first_element "Retinol") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_531
    (or
        (and (first_element "Retinol") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_532
    (or
        (and (first_element "Retinol") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_533
    (or
        (and (first_element "Retinol") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_534
    (or
        (and (first_element "Retinol") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_535
    (or
        (and (first_element "Retinol") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_536
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_537
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_538
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_539
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_540
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_541
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_542
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_543
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_544
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_545
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_546
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_547
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_548
    (or
        (and (first_element "Retinal") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_549
    (or
        (and (first_element "Retinal") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_550
    (or
        (and (first_element "Retinal") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_551
    (or
        (and (first_element "Retinal") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_552
    (or
        (and (first_element "Retinal") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_553
    (or
        (and (first_element "Retinal") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_554
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_555
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_556
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_557
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_558
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_559
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_560
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinol"))
        (and (first_element "Retinol") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinol: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_561
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinol Acetate"))
        (and (first_element "Retinol Acetate") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinol Acetate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_562
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinol Palmitate"))
        (and (first_element "Retinol Palmitate") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinol Palmitate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_563
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinal"))
        (and (first_element "Retinal") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinal: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_564
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinyl Propionate"))
        (and (first_element "Retinyl Propionate") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinyl Propionate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_565
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinol Retinoate"))
        (and (first_element "Retinol Retinoate") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Retinol Retinoate: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_566
    (or
        (and (first_element "Retinol") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinol и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_567
    (or
        (and (first_element "Retinol Acetate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinol Acetate и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_568
    (or
        (and (first_element "Retinol Palmitate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinol Palmitate и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_569
    (or
        (and (first_element "Retinal") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinal"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinal и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_570
    (or
        (and (first_element "Retinyl Propionate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinyl Propionate и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_571
    (or
        (and (first_element "Retinol Retinoate") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "-1"))
    (assert (info "Сочетание Retinol Retinoate и Retinol encapsulated and liposomal form: Отрицательное взаимодействие"))
)

(defrule правило_572
    (or
        (and (first_element "Retinol") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_573
    (or
        (and (first_element "Retinol Acetate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_574
    (or
        (and (first_element "Retinol Palmitate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_575
    (or
        (and (first_element "Retinal") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_576
    (or
        (and (first_element "Retinyl Propionate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_577
    (or
        (and (first_element "Retinol Retinoate") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Azelaic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_578
    (or
        (and (first_element "Retinol") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_579
    (or
        (and (first_element "Retinol") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_580
    (or
        (and (first_element "Retinol") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_581
    (or
        (and (first_element "Retinol") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_582
    (or
        (and (first_element "Retinol") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_583
    (or
        (and (first_element "Retinol") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_584
    (or
        (and (first_element "Retinol Acetate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_585
    (or
        (and (first_element "Retinol Acetate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_586
    (or
        (and (first_element "Retinol Acetate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_587
    (or
        (and (first_element "Retinol Acetate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_588
    (or
        (and (first_element "Retinol Acetate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_589
    (or
        (and (first_element "Retinol Acetate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_590
    (or
        (and (first_element "Retinol Palmitate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_591
    (or
        (and (first_element "Retinol Palmitate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_592
    (or
        (and (first_element "Retinol Palmitate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_593
    (or
        (and (first_element "Retinol Palmitate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_594
    (or
        (and (first_element "Retinol Palmitate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_595
    (or
        (and (first_element "Retinol Palmitate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_596
    (or
        (and (first_element "Retinal") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_597
    (or
        (and (first_element "Retinal") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_598
    (or
        (and (first_element "Retinal") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_599
    (or
        (and (first_element "Retinal") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_600
    (or
        (and (first_element "Retinal") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_601
    (or
        (and (first_element "Retinal") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_602
    (or
        (and (first_element "Retinyl Propionate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_603
    (or
        (and (first_element "Retinyl Propionate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_604
    (or
        (and (first_element "Retinyl Propionate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_605
    (or
        (and (first_element "Retinyl Propionate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_606
    (or
        (and (first_element "Retinyl Propionate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_607
    (or
        (and (first_element "Retinyl Propionate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_608
    (or
        (and (first_element "Retinol Retinoate") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_609
    (or
        (and (first_element "Retinol Retinoate") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_610
    (or
        (and (first_element "Retinol Retinoate") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_611
    (or
        (and (first_element "Retinol Retinoate") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_612
    (or
        (and (first_element "Retinol Retinoate") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_613
    (or
        (and (first_element "Retinol Retinoate") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_614
    (or
        (and (first_element "Retinol") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_615
    (or
        (and (first_element "Retinol") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_616
    (or
        (and (first_element "Retinol") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_617
    (or
        (and (first_element "Retinol") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_618
    (or
        (and (first_element "Retinol Acetate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_619
    (or
        (and (first_element "Retinol Acetate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_620
    (or
        (and (first_element "Retinol Acetate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_621
    (or
        (and (first_element "Retinol Acetate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_622
    (or
        (and (first_element "Retinol Palmitate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_623
    (or
        (and (first_element "Retinol Palmitate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_624
    (or
        (and (first_element "Retinol Palmitate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_625
    (or
        (and (first_element "Retinol Palmitate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_626
    (or
        (and (first_element "Retinal") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_627
    (or
        (and (first_element "Retinal") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_628
    (or
        (and (first_element "Retinal") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_629
    (or
        (and (first_element "Retinal") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_630
    (or
        (and (first_element "Retinyl Propionate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_631
    (or
        (and (first_element "Retinyl Propionate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_632
    (or
        (and (first_element "Retinyl Propionate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_633
    (or
        (and (first_element "Retinyl Propionate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_634
    (or
        (and (first_element "Retinol Retinoate") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_635
    (or
        (and (first_element "Retinol Retinoate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_636
    (or
        (and (first_element "Retinol Retinoate") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_637
    (or
        (and (first_element "Retinol Retinoate") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %"))
)

(defrule правило_638
    (or
        (and (first_element "Retinol") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_639
    (or
        (and (first_element "Retinol") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_640
    (or
        (and (first_element "Retinol") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_641
    (or
        (and (first_element "Retinol") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_642
    (or
        (and (first_element "Retinol") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_643
    (or
        (and (first_element "Retinol Acetate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_644
    (or
        (and (first_element "Retinol Acetate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_645
    (or
        (and (first_element "Retinol Acetate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_646
    (or
        (and (first_element "Retinol Acetate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_647
    (or
        (and (first_element "Retinol Acetate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_648
    (or
        (and (first_element "Retinol Palmitate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_649
    (or
        (and (first_element "Retinol Palmitate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_650
    (or
        (and (first_element "Retinol Palmitate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_651
    (or
        (and (first_element "Retinol Palmitate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_652
    (or
        (and (first_element "Retinol Palmitate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_653
    (or
        (and (first_element "Retinal") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_654
    (or
        (and (first_element "Retinal") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_655
    (or
        (and (first_element "Retinal") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_656
    (or
        (and (first_element "Retinal") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_657
    (or
        (and (first_element "Retinal") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_658
    (or
        (and (first_element "Retinyl Propionate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_659
    (or
        (and (first_element "Retinyl Propionate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_660
    (or
        (and (first_element "Retinyl Propionate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_661
    (or
        (and (first_element "Retinyl Propionate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_662
    (or
        (and (first_element "Retinyl Propionate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_663
    (or
        (and (first_element "Retinol Retinoate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и AНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_664
    (or
        (and (first_element "Retinol Retinoate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Lactic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_665
    (or
        (and (first_element "Retinol Retinoate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Glycolic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_666
    (or
        (and (first_element "Retinol Retinoate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_667
    (or
        (and (first_element "Retinol Retinoate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и cyclandelate: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,3 %
АНА ≤ 5 %"))
)

(defrule правило_668
    (or
        (and (first_element "Retinol") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_669
    (or
        (and (first_element "Retinol") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_670
    (or
        (and (first_element "Retinol") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_671
    (or
        (and (first_element "Retinol") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinol"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_672
    (or
        (and (first_element "Retinol Acetate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_673
    (or
        (and (first_element "Retinol Acetate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_674
    (or
        (and (first_element "Retinol Acetate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_675
    (or
        (and (first_element "Retinol Acetate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Acetate и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_676
    (or
        (and (first_element "Retinol Palmitate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_677
    (or
        (and (first_element "Retinol Palmitate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_678
    (or
        (and (first_element "Retinol Palmitate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_679
    (or
        (and (first_element "Retinol Palmitate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Palmitate и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_680
    (or
        (and (first_element "Retinal") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_681
    (or
        (and (first_element "Retinal") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_682
    (or
        (and (first_element "Retinal") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_683
    (or
        (and (first_element "Retinal") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinal"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinal и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_684
    (or
        (and (first_element "Retinyl Propionate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_685
    (or
        (and (first_element "Retinyl Propionate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_686
    (or
        (and (first_element "Retinyl Propionate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_687
    (or
        (and (first_element "Retinyl Propionate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinyl Propionate и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_688
    (or
        (and (first_element "Retinol Retinoate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и РНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_689
    (or
        (and (first_element "Retinol Retinoate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Lactobionic Acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_690
    (or
        (and (first_element "Retinol Retinoate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_691
    (or
        (and (first_element "Retinol Retinoate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol Retinoate и Gluconolactone: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_692
    (or
        (and (first_element "Retinol") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_693
    (or
        (and (first_element "Retinol") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinol"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_694
    (or
        (and (first_element "Retinol Acetate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Acetate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_695
    (or
        (and (first_element "Retinol Acetate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinol Acetate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Acetate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_696
    (or
        (and (first_element "Retinol Palmitate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Palmitate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_697
    (or
        (and (first_element "Retinol Palmitate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinol Palmitate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Palmitate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_698
    (or
        (and (first_element "Retinal") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinal и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_699
    (or
        (and (first_element "Retinal") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinal"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinal и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_700
    (or
        (and (first_element "Retinyl Propionate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinyl Propionate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_701
    (or
        (and (first_element "Retinyl Propionate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinyl Propionate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinyl Propionate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_702
    (or
        (and (first_element "Retinol Retinoate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Retinoate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_703
    (or
        (and (first_element "Retinol Retinoate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinol Retinoate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol Retinoate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_704
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol encapsulated and liposomal form"))
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Retinol encapsulated and liposomal form: Есть ограничения по взаимодействию, !
Retinol ≤ 1 %"))
)

(defrule правило_705
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Azelaic Acid: Есть ограничения по взаимодействию, !
При плотной коже
Retinol ≤ 0,5 %
Azelaic Acid ≤ 10 %"))
)

(defrule правило_706
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_707
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_708
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_709
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_710
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_711
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_712
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и ВНА-acids: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %"))
)

(defrule правило_713
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %"))
)

(defrule правило_714
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и salicylic acid: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %"))
)

(defrule правило_715
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и salicylic: Есть ограничения по взаимодействию, !
При жирной коже с акне
Retinol ≤ 0,5 %"))
)

(defrule правило_716
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и AНА-acids: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_717
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Lactic Acid: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_718
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Glycolic Acid: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_719
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_720
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и cyclandelate: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
АНА ≤ 5 %"))
)

(defrule правило_721
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и РНА-acids: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
РНА ≤ 5 %"))
)

(defrule правило_722
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Lactobionic Acid: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
РНА ≤ 5 %"))
)

(defrule правило_723
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
РНА ≤ 5 %"))
)

(defrule правило_724
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Gluconolactone: Есть ограничения по взаимодействию, !
Retinol ≤ 0,5 %
РНА ≤ 5 %"))
)

(defrule правило_725
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_726
    (or
        (and (first_element "Retinol encapsulated and liposomal form") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Retinol encapsulated and liposomal form"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Retinol encapsulated and liposomal form и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_727
    (or
        (and (first_element "Azelaic Acid") (second_element "Azelaic Acid"))
        (and (first_element "Azelaic Acid") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Azelaic Acid: Есть ограничения по взаимодействию, !
Azelaic Acid ≤ 20 %"))
)

(defrule правило_728
    (or
        (and (first_element "Azelaic Acid") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_729
    (or
        (and (first_element "Azelaic Acid") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_730
    (or
        (and (first_element "Azelaic Acid") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_731
    (or
        (and (first_element "Azelaic Acid") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_732
    (or
        (and (first_element "Azelaic Acid") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_733
    (or
        (and (first_element "Azelaic Acid") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_734
    (or
        (and (first_element "Azelaic Acid") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и ВНА-acids: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
ВНА ≤ 1 %"))
)

(defrule правило_735
    (or
        (and (first_element "Azelaic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
ВНА ≤ 1 %"))
)

(defrule правило_736
    (or
        (and (first_element "Azelaic Acid") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и salicylic acid: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
ВНА ≤ 1 %"))
)

(defrule правило_737
    (or
        (and (first_element "Azelaic Acid") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и salicylic: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
ВНА ≤ 1 %"))
)

(defrule правило_738
    (or
        (and (first_element "Azelaic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и AНА-acids: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
АНА ≤ 10 %"))
)

(defrule правило_739
    (or
        (and (first_element "Azelaic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Lactic Acid: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
АНА ≤ 10 %"))
)

(defrule правило_740
    (or
        (and (first_element "Azelaic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Glycolic Acid: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
АНА ≤ 10 %"))
)

(defrule правило_741
    (or
        (and (first_element "Azelaic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
АНА ≤ 10 %"))
)

(defrule правило_742
    (or
        (and (first_element "Azelaic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и cyclandelate: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
АНА ≤ 10 %"))
)

(defrule правило_743
    (or
        (and (first_element "Azelaic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и РНА-acids: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
PНА ≤ 10 %"))
)

(defrule правило_744
    (or
        (and (first_element "Azelaic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
PНА ≤ 10 %"))
)

(defrule правило_745
    (or
        (and (first_element "Azelaic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
PНА ≤ 10 %"))
)

(defrule правило_746
    (or
        (and (first_element "Azelaic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Azelaic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
При коже с акне
Azelaic Acid ≤ 10 %
PНА ≤ 10 %"))
)

(defrule правило_747
    (or
        (and (first_element "Azelaic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Azelaic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_748
    (or
        (and (first_element "Azelaic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Azelaic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Azelaic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_749
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_750
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_751
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_752
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_753
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_754
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_755
    (or
        (and (first_element "EGF") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_756
    (or
        (and (first_element "EGF") (second_element "EGF"))
        (and (first_element "EGF") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_757
    (or
        (and (first_element "EGF") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_758
    (or
        (and (first_element "EGF") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_759
    (or
        (and (first_element "EGF") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_760
    (or
        (and (first_element "EGF") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_761
    (or
        (and (first_element "Matrixyl") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_762
    (or
        (and (first_element "Matrixyl") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_763
    (or
        (and (first_element "Matrixyl") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_764
    (or
        (and (first_element "Matrixyl") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_765
    (or
        (and (first_element "Matrixyl") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_766
    (or
        (and (first_element "Matrixyl") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_767
    (or
        (and (first_element "Leuphasyl") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_768
    (or
        (and (first_element "Leuphasyl") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_769
    (or
        (and (first_element "Leuphasyl") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_770
    (or
        (and (first_element "Leuphasyl") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_771
    (or
        (and (first_element "Leuphasyl") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_772
    (or
        (and (first_element "Leuphasyl") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_773
    (or
        (and (first_element "Argireline") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_774
    (or
        (and (first_element "Argireline") (second_element "EGF"))
        (and (first_element "EGF") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_775
    (or
        (and (first_element "Argireline") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_776
    (or
        (and (first_element "Argireline") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_777
    (or
        (and (first_element "Argireline") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_778
    (or
        (and (first_element "Argireline") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_779
    (or
        (and (first_element "SYN-AKE") (second_element "Amino Acids + Peptides"))
        (and (first_element "Amino Acids + Peptides") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_780
    (or
        (and (first_element "SYN-AKE") (second_element "EGF"))
        (and (first_element "EGF") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_781
    (or
        (and (first_element "SYN-AKE") (second_element "Matrixyl"))
        (and (first_element "Matrixyl") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_782
    (or
        (and (first_element "SYN-AKE") (second_element "Leuphasyl"))
        (and (first_element "Leuphasyl") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_783
    (or
        (and (first_element "SYN-AKE") (second_element "Argireline"))
        (and (first_element "Argireline") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_784
    (or
        (and (first_element "SYN-AKE") (second_element "SYN-AKE"))
        (and (first_element "SYN-AKE") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_785
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_786
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_787
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_788
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_789
    (or
        (and (first_element "EGF") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_790
    (or
        (and (first_element "EGF") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_791
    (or
        (and (first_element "EGF") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_792
    (or
        (and (first_element "EGF") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_793
    (or
        (and (first_element "Matrixyl") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_794
    (or
        (and (first_element "Matrixyl") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_795
    (or
        (and (first_element "Matrixyl") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_796
    (or
        (and (first_element "Matrixyl") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_797
    (or
        (and (first_element "Leuphasyl") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_798
    (or
        (and (first_element "Leuphasyl") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_799
    (or
        (and (first_element "Leuphasyl") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_800
    (or
        (and (first_element "Leuphasyl") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_801
    (or
        (and (first_element "Argireline") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_802
    (or
        (and (first_element "Argireline") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_803
    (or
        (and (first_element "Argireline") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_804
    (or
        (and (first_element "Argireline") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_805
    (or
        (and (first_element "SYN-AKE") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_806
    (or
        (and (first_element "SYN-AKE") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_807
    (or
        (and (first_element "SYN-AKE") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_808
    (or
        (and (first_element "SYN-AKE") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_809
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_810
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_811
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_812
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_813
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_814
    (or
        (and (first_element "EGF") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_815
    (or
        (and (first_element "EGF") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_816
    (or
        (and (first_element "EGF") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_817
    (or
        (and (first_element "EGF") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_818
    (or
        (and (first_element "EGF") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_819
    (or
        (and (first_element "Matrixyl") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_820
    (or
        (and (first_element "Matrixyl") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_821
    (or
        (and (first_element "Matrixyl") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_822
    (or
        (and (first_element "Matrixyl") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_823
    (or
        (and (first_element "Matrixyl") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_824
    (or
        (and (first_element "Leuphasyl") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_825
    (or
        (and (first_element "Leuphasyl") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_826
    (or
        (and (first_element "Leuphasyl") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_827
    (or
        (and (first_element "Leuphasyl") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_828
    (or
        (and (first_element "Leuphasyl") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_829
    (or
        (and (first_element "Argireline") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_830
    (or
        (and (first_element "Argireline") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_831
    (or
        (and (first_element "Argireline") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_832
    (or
        (and (first_element "Argireline") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_833
    (or
        (and (first_element "Argireline") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_834
    (or
        (and (first_element "SYN-AKE") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_835
    (or
        (and (first_element "SYN-AKE") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_836
    (or
        (and (first_element "SYN-AKE") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_837
    (or
        (and (first_element "SYN-AKE") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_838
    (or
        (and (first_element "SYN-AKE") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_839
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_840
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_841
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_842
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_843
    (or
        (and (first_element "EGF") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_844
    (or
        (and (first_element "EGF") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_845
    (or
        (and (first_element "EGF") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_846
    (or
        (and (first_element "EGF") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_847
    (or
        (and (first_element "Matrixyl") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_848
    (or
        (and (first_element "Matrixyl") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_849
    (or
        (and (first_element "Matrixyl") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_850
    (or
        (and (first_element "Matrixyl") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_851
    (or
        (and (first_element "Leuphasyl") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_852
    (or
        (and (first_element "Leuphasyl") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_853
    (or
        (and (first_element "Leuphasyl") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_854
    (or
        (and (first_element "Leuphasyl") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_855
    (or
        (and (first_element "Argireline") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_856
    (or
        (and (first_element "Argireline") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_857
    (or
        (and (first_element "Argireline") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_858
    (or
        (and (first_element "Argireline") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_859
    (or
        (and (first_element "SYN-AKE") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_860
    (or
        (and (first_element "SYN-AKE") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_861
    (or
        (and (first_element "SYN-AKE") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_862
    (or
        (and (first_element "SYN-AKE") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    
)

(defrule правило_863
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Amino Acids + Peptides и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_864
    (or
        (and (first_element "Amino Acids + Peptides") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Amino Acids + Peptides"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Amino Acids + Peptides и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_865
    (or
        (and (first_element "EGF") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание EGF и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_866
    (or
        (and (first_element "EGF") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "EGF"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание EGF и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_867
    (or
        (and (first_element "Matrixyl") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Matrixyl и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_868
    (or
        (and (first_element "Matrixyl") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Matrixyl"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Matrixyl и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_869
    (or
        (and (first_element "Leuphasyl") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Leuphasyl и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_870
    (or
        (and (first_element "Leuphasyl") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Leuphasyl"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Leuphasyl и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_871
    (or
        (and (first_element "Argireline") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Argireline и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_872
    (or
        (and (first_element "Argireline") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Argireline"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Argireline и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_873
    (or
        (and (first_element "SYN-AKE") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание SYN-AKE и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_874
    (or
        (and (first_element "SYN-AKE") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "SYN-AKE"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание SYN-AKE и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_875
    (or
        (and (first_element "ВНА-acids") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и ВНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_876
    (or
        (and (first_element "ВНА-acids") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_877
    (or
        (and (first_element "ВНА-acids") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и salicylic acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_878
    (or
        (and (first_element "ВНА-acids") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и salicylic: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_879
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и ВНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_880
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_881
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и salicylic acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_882
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и salicylic: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_883
    (or
        (and (first_element "salicylic acid") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и ВНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_884
    (or
        (and (first_element "salicylic acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_885
    (or
        (and (first_element "salicylic acid") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и salicylic acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_886
    (or
        (and (first_element "salicylic acid") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и salicylic: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_887
    (or
        (and (first_element "salicylic") (second_element "ВНА-acids"))
        (and (first_element "ВНА-acids") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и ВНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_888
    (or
        (and (first_element "salicylic") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Salicylic Acid 0.5–2 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_889
    (or
        (and (first_element "salicylic") (second_element "salicylic acid"))
        (and (first_element "salicylic acid") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и salicylic acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_890
    (or
        (and (first_element "salicylic") (second_element "salicylic"))
        (and (first_element "salicylic") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и salicylic: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %"))
)

(defrule правило_891
    (or
        (and (first_element "ВНА-acids") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_892
    (or
        (and (first_element "ВНА-acids") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_893
    (or
        (and (first_element "ВНА-acids") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_894
    (or
        (and (first_element "ВНА-acids") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_895
    (or
        (and (first_element "ВНА-acids") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_896
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_897
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_898
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_899
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_900
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_901
    (or
        (and (first_element "salicylic acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_902
    (or
        (and (first_element "salicylic acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_903
    (or
        (and (first_element "salicylic acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_904
    (or
        (and (first_element "salicylic acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_905
    (or
        (and (first_element "salicylic acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_906
    (or
        (and (first_element "salicylic") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_907
    (or
        (and (first_element "salicylic") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_908
    (or
        (and (first_element "salicylic") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_909
    (or
        (and (first_element "salicylic") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_910
    (or
        (and (first_element "salicylic") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_911
    (or
        (and (first_element "ВНА-acids") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_912
    (or
        (and (first_element "ВНА-acids") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_913
    (or
        (and (first_element "ВНА-acids") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_914
    (or
        (and (first_element "ВНА-acids") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание ВНА-acids и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_915
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_916
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_917
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_918
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_919
    (or
        (and (first_element "salicylic acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_920
    (or
        (and (first_element "salicylic acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_921
    (or
        (and (first_element "salicylic acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_922
    (or
        (and (first_element "salicylic acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "salicylic acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic acid и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_923
    (or
        (and (first_element "salicylic") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_924
    (or
        (and (first_element "salicylic") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_925
    (or
        (and (first_element "salicylic") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_926
    (or
        (and (first_element "salicylic") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "salicylic"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание salicylic и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_927
    (or
        (and (first_element "ВНА-acids") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание ВНА-acids и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_928
    (or
        (and (first_element "ВНА-acids") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "ВНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание ВНА-acids и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_929
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_930
    (or
        (and (first_element "Salicylic Acid 0.5–2 % pH = 3–4") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Salicylic Acid 0.5–2 % pH = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Salicylic Acid 0.5–2 % pH = 3–4 и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_931
    (or
        (and (first_element "salicylic acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "salicylic acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание salicylic acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_932
    (or
        (and (first_element "salicylic acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "salicylic acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание salicylic acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_933
    (or
        (and (first_element "salicylic") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "salicylic"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание salicylic и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_934
    (or
        (and (first_element "salicylic") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "salicylic"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание salicylic и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_935
    (or
        (and (first_element "AНА-acids") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_936
    (or
        (and (first_element "AНА-acids") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_937
    (or
        (and (first_element "AНА-acids") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_938
    (or
        (and (first_element "AНА-acids") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_939
    (or
        (and (first_element "AНА-acids") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_940
    (or
        (and (first_element "Lactic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_941
    (or
        (and (first_element "Lactic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_942
    (or
        (and (first_element "Lactic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_943
    (or
        (and (first_element "Lactic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_944
    (or
        (and (first_element "Lactic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_945
    (or
        (and (first_element "Glycolic Acid") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_946
    (or
        (and (first_element "Glycolic Acid") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_947
    (or
        (and (first_element "Glycolic Acid") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_948
    (or
        (and (first_element "Glycolic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_949
    (or
        (and (first_element "Glycolic Acid") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_950
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_951
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_952
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_953
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_954
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_955
    (or
        (and (first_element "cyclandelate") (second_element "AНА-acids"))
        (and (first_element "AНА-acids") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и AНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_956
    (or
        (and (first_element "cyclandelate") (second_element "Lactic Acid"))
        (and (first_element "Lactic Acid") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Lactic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_957
    (or
        (and (first_element "cyclandelate") (second_element "Glycolic Acid"))
        (and (first_element "Glycolic Acid") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Glycolic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_958
    (or
        (and (first_element "cyclandelate") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Mandelic Acid 2–10 %* рН = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_959
    (or
        (and (first_element "cyclandelate") (second_element "cyclandelate"))
        (and (first_element "cyclandelate") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и cyclandelate: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_960
    (or
        (and (first_element "AНА-acids") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_961
    (or
        (and (first_element "AНА-acids") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_962
    (or
        (and (first_element "AНА-acids") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_963
    (or
        (and (first_element "AНА-acids") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "AНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание AНА-acids и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_964
    (or
        (and (first_element "Lactic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_965
    (or
        (and (first_element "Lactic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_966
    (or
        (and (first_element "Lactic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_967
    (or
        (and (first_element "Lactic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_968
    (or
        (and (first_element "Glycolic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_969
    (or
        (and (first_element "Glycolic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_970
    (or
        (and (first_element "Glycolic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_971
    (or
        (and (first_element "Glycolic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Glycolic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_972
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_973
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_974
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_975
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_976
    (or
        (and (first_element "cyclandelate") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_977
    (or
        (and (first_element "cyclandelate") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_978
    (or
        (and (first_element "cyclandelate") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_979
    (or
        (and (first_element "cyclandelate") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "cyclandelate"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание cyclandelate и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно ВНА ≤ 2 %
AНА ≤ 5 %"))
)

(defrule правило_980
    (or
        (and (first_element "AНА-acids") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "AНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание AНА-acids и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_981
    (or
        (and (first_element "AНА-acids") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "AНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание AНА-acids и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_982
    (or
        (and (first_element "Lactic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Lactic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_983
    (or
        (and (first_element "Lactic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Lactic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Lactic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_984
    (or
        (and (first_element "Glycolic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Glycolic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_985
    (or
        (and (first_element "Glycolic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Glycolic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Glycolic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_986
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_987
    (or
        (and (first_element "Mandelic Acid 2–10 %* рН = 3–4") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Mandelic Acid 2–10 %* рН = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Mandelic Acid 2–10 %* рН = 3–4 и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_988
    (or
        (and (first_element "cyclandelate") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "cyclandelate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание cyclandelate и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_989
    (or
        (and (first_element "cyclandelate") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "cyclandelate"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание cyclandelate и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_990
    (or
        (and (first_element "РНА-acids") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "РНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание РНА-acids и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_991
    (or
        (and (first_element "РНА-acids") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "РНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание РНА-acids и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_992
    (or
        (and (first_element "РНА-acids") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "РНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание РНА-acids и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_993
    (or
        (and (first_element "РНА-acids") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "РНА-acids"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание РНА-acids и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_994
    (or
        (and (first_element "Lactobionic Acid") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactobionic Acid и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_995
    (or
        (and (first_element "Lactobionic Acid") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactobionic Acid и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_996
    (or
        (and (first_element "Lactobionic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactobionic Acid и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_997
    (or
        (and (first_element "Lactobionic Acid") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Lactobionic Acid и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_998
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_999
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1000
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1001
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1002
    (or
        (and (first_element "Gluconolactone") (second_element "РНА-acids"))
        (and (first_element "РНА-acids") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone и РНА-acids: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1003
    (or
        (and (first_element "Gluconolactone") (second_element "Lactobionic Acid"))
        (and (first_element "Lactobionic Acid") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone и Lactobionic Acid: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1004
    (or
        (and (first_element "Gluconolactone") (second_element "Gluconolactone 2–10 % pH = 3–4"))
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone и Gluconolactone 2–10 % pH = 3–4: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1005
    (or
        (and (first_element "Gluconolactone") (second_element "Gluconolactone"))
        (and (first_element "Gluconolactone") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "0"))
    (assert (info "Сочетание Gluconolactone и Gluconolactone: Есть ограничения по взаимодействию, !
Суммарно PНА ≤ 10–15 %"))
)

(defrule правило_1006
    (or
        (and (first_element "РНА-acids") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "РНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание РНА-acids и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1007
    (or
        (and (first_element "РНА-acids") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "РНА-acids"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание РНА-acids и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1008
    (or
        (and (first_element "Lactobionic Acid") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Lactobionic Acid и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1009
    (or
        (and (first_element "Lactobionic Acid") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Lactobionic Acid"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Lactobionic Acid и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1010
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1011
    (or
        (and (first_element "Gluconolactone 2–10 % pH = 3–4") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Gluconolactone 2–10 % pH = 3–4"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Gluconolactone 2–10 % pH = 3–4 и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1012
    (or
        (and (first_element "Gluconolactone") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Gluconolactone и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1013
    (or
        (and (first_element "Gluconolactone") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Gluconolactone"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Gluconolactone и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1014
    (or
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Benzoyl Peroxide 2.5–5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Benzoyl Peroxide 2.5–5 % и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1015
    (or
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Benzoyl Peroxide 2.5–5 %"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Benzoyl Peroxide 2.5–5 % и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1016
    (or
        (and (first_element "Benzoyl Peroxide") (second_element "Benzoyl Peroxide 2.5–5 %"))
        (and (first_element "Benzoyl Peroxide 2.5–5 %") (second_element "Benzoyl Peroxide"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Benzoyl Peroxide и Benzoyl Peroxide 2.5–5 %: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

(defrule правило_1017
    (or
        (and (first_element "Benzoyl Peroxide") (second_element "Benzoyl Peroxide"))
        (and (first_element "Benzoyl Peroxide") (second_element "Benzoyl Peroxide"))
    )
    =>
    (assert (result "1"))
    (assert (info "Сочетание Benzoyl Peroxide и Benzoyl Peroxide: Можно сочетать, Наносить спустя 30 минут
после любой косметики"))
)

;; Правило для создания финального результата "-1" и подсчёта
(defrule set_final_minus_1
    (result "-1")
    =>
    (bind ?*count_neg1* (+ ?*count_neg1* 1))  ;; Увеличиваем счётчик -1
    (assert (final_result "-1"))  ;; Создаём факт "final_result"

    ;; Создание факта "степень" на основе подсчёта -1 (счётчик)
    (assert (degree ?*count_neg1*))  ;; Факт "degree" с числовым значением счётчика -1

    (halt)  ;; Завершаем выполнение
)

;; Правило для создания финального результата "0" и подсчёта
(defrule set_final_0
    (not (result "-1"))
    (result "0")
    =>
    (bind ?*count_0* (+ ?*count_0* 1))  ;; Увеличиваем счётчик 0
    (assert (final_result "0"))  ;; Создаём факт "final_result"

    ;; Создание факта "степень" на основе подсчёта 0 (счётчик)
    (assert (degree ?*count_0*))  ;; Факт "degree" с числовым значением счётчика 0

    (halt)  ;; Завершаем выполнение
)

;; Правило для создания финального результата "1" и подсчёта
(defrule set_final_1
    (not (result "-1"))
    (not (result "0"))
    (result "1")
    =>
    (bind ?*count_1* (+ ?*count_1* 1))  ;; Увеличиваем счётчик 1
    (assert (final_result "1"))  ;; Создаём факт "final_result"

    ;; Создание факта "степень" на основе подсчёта 1 (счётчик)
    (assert (degree ?*count_1*))  ;; Факт "degree" с числовым значением счётчика 1

    (halt)  ;; Завершаем выполнение
)