(defrule rule_1
    (product_feature "увлажняющий")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, идеально подходит для сухой кожи"))
)

(defrule rule_2
    (product_feature "увлажняющий")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "1"))
    (assert (info "1, продукт может быть полезен для жирной кожи, но следует выбирать формулы с лёгкой текстурой"))
)

(defrule rule_3
    (product_feature "увлажняющий")
    (user_fact skin_type "Комбинированная")
    =>
    (assert (result "1"))
    (assert (info "1, подходит для комбинированной кожи"))
)

(defrule rule_4
    (product_feature "увлажняющий")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, подходит для чувствительной кожи"))
)

(defrule rule_5
    (product_feature "увлажняющий")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, помогает избавиться от шелушений"))
)

(defrule rule_6
    (product_feature "увлажняющий")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, поможет уменьшить видимость мелких морщин и сохранить упругость кожи"))
)

(defrule rule_7
    (product_feature "увлажняющий")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, поможет уменьшить видимость мелких морщин и сохранить упругость кожи"))
)

(defrule rule_8
    (product_feature "увлажняющий")
    (user_fact procedure_types "Пилинг")
    =>
    (assert (result "1"))
    (assert (info "1, средство будет способствовать восстановлению кожи, ускоряя заживление"))
)

(defrule rule_9
    (product_feature "увлажняющий")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, подходит для использования под макияж"))
)

(defrule rule_10
    (product_feature "антивозрастной")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, сухая кожа склонна к раннему старению — антивозрастные средство особенно актуально"))
)

(defrule rule_11
    (product_feature "антивозрастной")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, антивозрастное средство может помочь осветлить пигментацию"))
)

(defrule rule_12
    (product_feature "антивозрастной")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, прямое показание — антивозрастное средство разработано именно для вашего типа кожи"))
)

(defrule rule_13
    (product_feature "антивозрастной")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, рекомендуется использовать антивозрастное средство для вашего типа кожи"))
)

(defrule rule_14
    (product_feature "антивозрастной")
    (user_fact weather "Солнечная")
    =>
    (assert (result "1"))
    (assert (info "1, рекомендуется использовать антивозрастной уход с SPF-защитой"))
)

(defrule rule_15
    (product_feature "выравнивает_тон")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "0"))
    (assert (info "0, использовать с осторожностью, выбирать мягкие формулы"))
)

(defrule rule_16
    (product_feature "выравнивает_тон")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "0"))
    (assert (info "0, использовать с осторожностью, выбирать мягкие формулы"))
)

(defrule rule_17
    (product_feature "выравнивает_тон")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, выравнивающее тон средство может улучшить состояние пор"))
)

(defrule rule_18
    (product_feature "выравнивает_тон")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство может усилить шелушение"))
)

(defrule rule_19
    (product_feature "выравнивает_тон")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, средство выравнивающее тон, направлено на решение особенности вашей кожи"))
)

(defrule rule_20
    (product_feature "выравнивает_тон")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, средство выравнивающее тон может помочь с возрастными пигментациями"))
)

(defrule rule_21
    (product_feature "выравнивает_тон")
    (user_fact age "Подростковая")
    =>
    (assert (result "0"))
    (assert (info "0, средство выравнивающее тон, только при наличии проблем с пигментацией или постакне"))
)

(defrule rule_22
    (product_feature "выравнивает_тон")
    (user_fact age "Молодая")
    =>
    (assert (result "1"))
    (assert (info "1, средство выравнивающее тон, подходит для профилактики пигментации"))
)

(defrule rule_23
    (product_feature "выравнивает_тон")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, средство выравнивающее тон может помочь с возрастными пигментациями"))
)

(defrule rule_24
    (product_feature "выравнивает_тон")
    (user_fact had_procedure "Да")
    =>
    (assert (result "-1"))
    (assert (info "-1, не рекомендуется использовать сразу после процедур"))
)

(defrule rule_25
    (product_feature "выравнивает_тон")
    (user_fact weather "Солнечная")
    =>
    (assert (result "0"))
    (assert (info "0, при использовании осветляющего средства обязательно использовать средства с SPF"))
)

(defrule rule_26
    (product_feature "питательный")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, питательные средства особенно полезны для сухой кожи — помогают восстановить липидный барьер и избавиться от стянутости"))
)

(defrule rule_27
    (product_feature "питательный")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "-1"))
    (assert (info "-1, плотные питательные средства могут визуально подчеркнуть поры"))
)

(defrule rule_28
    (product_feature "питательный")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, питательные средства эффективны при шелушении, помогают восстановить барьер кожи"))
)

(defrule rule_29
    (product_feature "питательный")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, возрастная кожа нуждается в дополнительном питании — это поддерживает её упругость и здоровье"))
)

(defrule rule_30
    (product_feature "питательный")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, зрелая кожа нуждается в дополнительном питании — это поддерживает её упругость и здоровье"))
)

(defrule rule_31
    (product_feature "питательный")
    (user_fact had_procedure "Да")
    =>
    (assert (result "1"))
    (assert (info "1, после косметических процедур кожа нуждается в восстановлении — питательные формулы помогают в этом"))
)

(defrule rule_32
    (product_feature "питательный")
    (user_fact weather "Солнечная")
    =>
    (assert (result "-1"))
    (assert (info "-1, в жару плотные текстуры могут ощущаться тяжело"))
)

(defrule rule_33
    (product_feature "питательный")
    (user_fact weather "Холодная")
    =>
    (assert (result "1"))
    (assert (info "1, холод и ветер сушат кожу — питательные средства особенно необходимы в этот период"))
)

(defrule rule_34
    (product_feature "для_чувствительной")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, это средство может подойти для чувствительной кожи"))
)

(defrule rule_35
    (product_feature "для_чувствительной")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, средство для чувствительной кожи с мягкой формулой может помочь уменьшить реактивность кожи"))
)

(defrule rule_36
    (product_feature "для_чувствительной")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, средство для чувствительной кожи с мягкой формулой может помочь уменьшить реактивность кожи"))
)

(defrule rule_37
    (product_feature "для_чувствительной")
    (user_fact had_procedure "Да")
    =>
    (assert (result "1"))
    (assert (info "1, данное средство может подойти для восстановления после процедуры"))
)

(defrule rule_38
    (product_feature "для_жирной")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "-1"))
    (assert (info "-1, не рекомендуется использовать, средство с пересушивающими ингредиентами, может навредить сухой коже"))
)

(defrule rule_39
    (product_feature "для_жирной")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "1"))
    (assert (info "1, средство подходит, так как оно специально разработано для жирной кожи, помогает регулировать выработку себума и предотвращает блеск"))
)

(defrule rule_40
    (product_feature "для_жирной")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "0"))
    (assert (info "0, используйте с осторожностью, чтобы избежать пересушивания"))
)

(defrule rule_41
    (product_feature "для_жирной")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, средство может помочь контролировать выработку себума и предотвратить появление акне"))
)

(defrule rule_42
    (product_feature "для_жирной")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, подходит для кожи с расширенными порами — помогает уменьшить блеск и визуально уменьшить поры"))
)

(defrule rule_43
    (product_feature "для_жирной")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "-1"))
    (assert (info "-1, не рекомендуется, средство может пересушивать кожу с шелушениями"))
)

(defrule rule_44
    (product_feature "от_акне")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "0"))
    (assert (info "0, использовать с осторожностью, выбирать мягкие формулы"))
)

(defrule rule_45
    (product_feature "от_акне")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, это средство с противовоспалительными свойствами поможет уменьшить покраснение и воспаление на коже"))
)

(defrule rule_46
    (product_feature "от_акне")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, это средство разработано для борьбы с акне, регулирует работу сальных желез и предотвращает образование новых высыпаний"))
)

(defrule rule_47
    (product_feature "от_акне")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, средство может помочь в борьбе с расширенными порами"))
)

(defrule rule_48
    (product_feature "от_акне")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, средство может помочь уменьшить пигментацию, связанную с акне"))
)

(defrule rule_49
    (product_feature "от_акне")
    (user_fact age "Подростковая")
    =>
    (assert (result "1"))
    (assert (info "1, это средство идеально подходит для подростков с акне, так как помогает контролировать выработку себума и предотвращать воспаления"))
)

(defrule rule_50
    (product_feature "от_акне")
    (user_fact procedure_types "Механическая чистка")
    =>
    (assert (result "1"))
    (assert (info "1, после механической чистки можно использовать это средство с противовоспалительным эффектом, чтобы ускорить восстановление и предотвратить новые высыпания"))
)

(defrule rule_51
    (product_feature "для_проблемной")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, средство поможет снизить воспаления и покраснения, уменьшая раздражение на коже"))
)

(defrule rule_52
    (product_feature "для_проблемной")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, средство для борьбы с акне, регулирует работу сальных желез и помогает предотвратить появление новых высыпаний"))
)

(defrule rule_53
    (product_feature "для_проблемной")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, средство помогает очищать поры и снижать их визуальное расширение"))
)

(defrule rule_54
    (product_feature "для_проблемной")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, средство может помочь уменьшить пятна, связанные с воспалениями и акне"))
)

(defrule rule_55
    (product_feature "для_проблемной")
    (user_fact age "Подростковая")
    =>
    (assert (result "1"))
    (assert (info "1, средство идеально подходит для подростков с проблемной кожей, помогает бороться с высыпаниями и воспалениями"))
)

(defrule rule_56
    (product_feature "для_сухой")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство идеально подходит для сухой кожи, помогает восстановить уровень увлажненности и уменьшить чувство стянутости"))
)

(defrule rule_57
    (product_feature "для_сухой")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство подходит для сухой кожи с шелушениями, помогает улучшить барьерные функции кожи и восстанавливает её мягкость"))
)

(defrule rule_58
    (product_feature "для_сухой")
    (user_fact weather "Холодная")
    =>
    (assert (result "1"))
    (assert (info "1, холод и ветер способствуют обезвоживанию кожи, поэтому увлажняющие средства особенно важны в этот период"))
)

(defrule rule_59
    (product_feature "для_комбинированной")
    (user_fact skin_type "Комбинированная")
    =>
    (assert (result "1"))
    (assert (info "1, средство подходит для комбинированной кожи, так как помогает увлажнить сухие участки и контролировать жирность в Т-зоне"))
)

(defrule rule_60
    (product_feature "можно_поверх_макияжа")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство можно носить поверх макияжа, отличное решение для дополнительного увлажнения и комфорта в течение дня при сухой коже"))
)

(defrule rule_61
    (product_feature "можно_поверх_макияжа")
    (user_fact skin_type "Комбинированная")
    =>
    (assert (result "1"))
    (assert (info "1, средство можно носить поверх макияжа, отличное решение для дополнительного увлажнения и комфорта в течение дня при комбинированной коже"))
)

(defrule rule_62
    (product_feature "можно_поверх_макияжа")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство можно носить поверх макияжа, может помочь визуально смягчить шелушения"))
)

(defrule rule_63
    (product_feature "можно_поверх_макияжа")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, средство предназначено для нанесения поверх макияжа, подойдет для освежения образа"))
)

(defrule rule_64
    (product_feature "от_черных_точек")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, очищающие и себорегулирующие компоненты в составе этого средства помогают бороться не только с чёрными точками, но и с акне"))
)

(defrule rule_65
    (product_feature "от_черных_точек")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, это средство помогает очищать поры и визуально их уменьшать"))
)

(defrule rule_66
    (product_feature "сияние_кожи")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство для сияния кожи, подойдет для увлажнения сухой кожи"))
)

(defrule rule_67
    (product_feature "сияние_кожи")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство для сияния кожи, подойдет для увлажнения кожи"))
)

(defrule rule_68
    (product_feature "сияние_кожи")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, средство для сияния кожи, может содержать осветляющие компоненты, подойдет для борьбы с пигментацией"))
)

(defrule rule_69
    (product_feature "регенерирующий")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, поможет ускорить заживление, особенно при раздражениях или повреждениях"))
)

(defrule rule_70
    (product_feature "регенерирующий")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, поможет ускорить заживление, особенно при раздражениях или повреждениях"))
)

(defrule rule_71
    (product_feature "регенерирующий")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, может способствовать стимуляции обновления клеток и борьбы морщинами"))
)

(defrule rule_72
    (product_feature "регенерирующий")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, может способствовать стимуляции обновления клеток и борьбы морщинами"))
)

(defrule rule_73
    (product_feature "регенерирующий")
    (user_fact procedure_types "Пилинг")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, поможет в восстановлении кожи после пилинга и предотвращении шелушений"))
)

(defrule rule_74
    (product_feature "регенерирующий")
    (user_fact procedure_types "Механическая чистка")
    =>
    (assert (result "1"))
    (assert (info "1, регенерирующее средство, поможет в восстановлении кожи после травматизации"))
)

(defrule rule_75
    (product_feature "матирующий")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "-1"))
    (assert (info "-1, не рекомендуется — может усилить ощущение стянутости и сухости"))
)

(defrule rule_76
    (product_feature "матирующий")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "1"))
    (assert (info "1, матирующее средство, снижает блеск, регулирует себум, улучшает внешний вид"))
)

(defrule rule_77
    (product_feature "матирующий")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, матриующее средство, уменьшает визуальное проявление пор за счёт снижения жирности"))
)

(defrule rule_78
    (product_feature "матирующий")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "-1"))
    (assert (info "-1, может подчеркнуть шелушения — нежелательно при выраженной сухости кожи"))
)

(defrule rule_79
    (product_feature "матирующий")
    (user_fact had_procedure "Да")
    =>
    (assert (result "-1"))
    (assert (info "-1, не рекомендуется сразу после процедур — может раздражать кожу, нарушать восстановление"))
)

(defrule rule_80
    (product_feature "от_отеков")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, средство от отеков, актуально, т. к. склонность к отёкам усиливается с возрастом"))
)

(defrule rule_81
    (product_feature "от_отеков")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, средство от отеков, способствует улучшению микроциркуляции и дренажавозрастом"))
)

(defrule rule_82
    (product_feature "для_обезвоженной")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство для обезвоженной кожи, подходит для увлажнения сухой кожи"))
)

(defrule rule_83
    (product_feature "для_обезвоженной")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство для обезвоженной кожи, подходит для увлажнения кожи с шелушениями"))
)

(defrule rule_84
    (product_feature "для_обезвоженной")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, средство для обезвоженной кожи, рекомендовано, т. к. сниженный уровень влаги усугубляет морщины"))
)

(defrule rule_85
    (product_feature "для_нормальной")
    (user_fact  "")
    =>
    (assert (result "1"))
    (assert (info "1, средство для нормальной кожи"))
)

(defrule rule_86
    (product_feature "spf_защита")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, обязательно при пигментациях"))
)

(defrule rule_87
    (product_feature "spf_защита")
    (user_fact tendencies "Возрастная_кожа")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, рекомендовано при возрастной коже"))
)

(defrule rule_88
    (product_feature "spf_защита")
    (user_fact age "Молодая")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, ежедневное применение солнцезащиты может замедлить появление признаков старения кожи"))
)

(defrule rule_89
    (product_feature "spf_защита")
    (user_fact age "Зрелая")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, рекомендовано при зрелой коже, может замедлить появление признаков старения кожи"))
)

(defrule rule_90
    (product_feature "spf_защита")
    (user_fact procedure_types "Пилинг")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, после процедуры кожа особенно уязвима, поэтому показан бережный SPF"))
)

(defrule rule_91
    (product_feature "spf_защита")
    (user_fact procedure_types "Механическая чистка")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, после процедуры кожа особенно уязвима, поэтому показан бережный SPF"))
)

(defrule rule_92
    (product_feature "spf_защита")
    (user_fact weather "Солнечная")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, в солнечную погоду необходим высокий уровень защиты (SPF 30–50)"))
)

(defrule rule_93
    (product_feature "spf_защита")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, SPF средство, наносится до макияжа"))
)

(defrule rule_94
    (product_feature "энзимный")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, мягкое очищение без травматизации"))
)

(defrule rule_95
    (product_feature "энзимный")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, мягкое очищение без травматизации"))
)

(defrule rule_96
    (product_feature "энзимный")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, мягкое очищение без травматизации"))
)

(defrule rule_97
    (product_feature "энзимный")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, регулярное применение помогает очищать поры и сужать их визуально"))
)

(defrule rule_98
    (product_feature "энзимный")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, устраняет поверхностное шелушение"))
)

(defrule rule_99
    (product_feature "энзимный")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, энзимное средство, в курсовом применении может способствовать осветлению тона кожи"))
)

(defrule rule_100
    (product_feature "уменьшает_поры")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, средство обеспечивает сужение и уменьшение выраженности пор"))
)

(defrule rule_101
    (product_feature "веганский")
    (user_fact has_allergy "Да")
    =>
    (assert (result "1"))
    (assert (info "1, веганское средство, отсутствие животных компонентов снижает аллергенность"))
)

(defrule rule_102
    (product_feature "гипоаллергенный")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, гипоаллергенное средство, разрабатывается специально для чувствительной кожи, с минимизацией риска раздражений"))
)

(defrule rule_103
    (product_feature "гипоаллергенный")
    (user_fact has_allergy "Да")
    =>
    (assert (result "1"))
    (assert (info "1, гипоаллергенное средство, исключаются потенциальные аллергены, отдушки, агрессивные консерванты"))
)

(defrule rule_104
    (product_feature "некомедогенный")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, некомедогенное средство, снижает риск повторных воспалений"))
)

(defrule rule_105
    (product_feature "некомедогенный")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, некомедогенное средство не забивает поры, предотвращает образование новых высыпаний"))
)

(defrule rule_106
    (product_feature "некомедогенный")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, некомедогенное средство, помогают избежать забитых пор"))
)

(defrule rule_107
    (product_feature "с_маслами")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство с маслами, отлично питает и восстанавливает липидный барьер"))
)

(defrule rule_108
    (product_feature "с_маслами")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "0"))
    (assert (info "0, средство с маслами, может спровоцировать чрезмерный блеск и закупорку пор"))
)

(defrule rule_109
    (product_feature "с_маслами")
    (user_fact weather "Холодная")
    =>
    (assert (result "1"))
    (assert (info "1, средство на основе масел, защищает от сухого воздуха и ветра"))
)

(defrule rule_110
    (product_feature "с_экстрактами")
    (user_fact has_allergy "Да")
    =>
    (assert (result "0"))
    (assert (info "0, средство с экстрактами - потенциальные аллергены"))
)

(defrule rule_111
    (product_feature "минеральный")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "-1"))
    (assert (info "-1, минеральное средство может подчёркивать шелушения, давать ощущение сухости"))
)

(defrule rule_112
    (product_feature "минеральный")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "-1"))
    (assert (info "-1, минеральное средство может подчёркивать шелушения, давать ощущение сухости"))
)

(defrule rule_113
    (product_feature "минеральный")
    (user_fact has_allergy "Да")
    =>
    (assert (result "1"))
    (assert (info "1, минеральный состав, гипоаллергенный потенциал выше (часто не содержат отдушек и агрессивных веществ)"))
)

(defrule rule_114
    (product_feature "органический")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, органическая косметика часто содержит меньше агрессивных консервантов и отдушек"))
)

(defrule rule_115
    (product_feature "органический")
    (user_fact has_allergy "Да")
    =>
    (assert (result "0"))
    (assert (info "0, органический состав, могут быть эфирные масла, пыльца, растительные экстракты — возможны аллергии"))
)

(defrule rule_116
    (product_feature "для_подростков")
    (user_fact age "Подростковая")
    =>
    (assert (result "1"))
    (assert (info "1, средство для подростков, адаптировано под особенности молодой кожи"))
)

(defrule rule_117
    (product_feature "ночной_уход")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, ночной уход часто содержит питательные компоненты, может помочь при сухой коже"))
)

(defrule rule_118
    (product_feature "ночной_уход")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, ночной уход может эффективно увлажнять"))
)

(defrule rule_119
    (product_feature "дневной_уход")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, дневной уход может служить базой под макияж, защищая кожу и улучшая стойкость"))
)

(defrule rule_120
    (product_feature "успокаивающий")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, успокаивающее средство, компоненты снижают воспалительные реакции, зуд, улучшают регенерацию"))
)

(defrule rule_121
    (product_feature "успокаивающий")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, успокаивающее средство, компоненты снижают воспалительные реакции, зуд, улучшают регенерацию"))
)

(defrule rule_122
    (product_feature "успокаивающий")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, успокаивающее средство, компоненты снижают воспалительные реакции, зуд, улучшают регенерацию"))
)

(defrule rule_123
    (product_feature "успокаивающий")
    (user_fact had_procedure "Да")
    =>
    (assert (result "1"))
    (assert (info "1, успокаивающее средство, помогает коже восстановиться после процедуры"))
)

(defrule rule_124
    (product_feature "очищающий")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, очищающее средство, для удаления макияжа рекомендовано двухэтапное очищение кожи лица"))
)

(defrule rule_125
    (product_feature "отшелушивающий")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "-1"))
    (assert (info "-1, отшелушевающее средство, может пересушить кожу"))
)

(defrule rule_126
    (product_feature "отшелушивающий")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, отшелушевающее средство, помогает стимулировать обновление клеток"))
)

(defrule rule_127
    (product_feature "отшелушивающий")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, отшелушевающее средство, помогает очищать поры и стимулировать обновление клеток"))
)

(defrule rule_128
    (product_feature "отшелушивающий")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, отшелушевающее средство, помогает очищать поры"))
)

(defrule rule_129
    (product_feature "отшелушивающий")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, отшелушевающее средство, помогает стимулировать обновление клеток, но может пересушить кожу, усугубить проблему шелушений"))
)

(defrule rule_130
    (product_feature "отшелушивающий")
    (user_fact tendencies "Пигментация")
    =>
    (assert (result "1"))
    (assert (info "1, отшелушевающее средство, помогает выравнивать тон"))
)

(defrule rule_131
    (product_feature "отшелушивающий")
    (user_fact weather "Солнечная")
    =>
    (assert (result "0"))
    (assert (info "0, отшелушевающее средство, повышает фоточувствительность кожи, рекомендуется носить SPF"))
)

(defrule rule_132
    (product_feature "противовоспалительный")
    (user_fact tendencies "Воспаления")
    =>
    (assert (result "1"))
    (assert (info "1, противовоспалительное средство, прямое показание при указанных особенностях кожи"))
)

(defrule rule_133
    (product_feature "противовоспалительный")
    (user_fact tendencies "Акне")
    =>
    (assert (result "1"))
    (assert (info "1, противовоспалительное средство, прямое показание при указанных особенностях кожи"))
)

(defrule rule_134
    (product_feature "противовоспалительный")
    (user_fact tendencies "Расширенные_поры")
    =>
    (assert (result "1"))
    (assert (info "1, противовоспалительное средство, прямое показание при указанных особенностях кожи"))
)

(defrule rule_135
    (product_feature "противовоспалительный")
    (user_fact procedure_types "Пилинг")
    =>
    (assert (result "1"))
    (assert (info "1, противовоспалительное средство, может помочь успокоить кожу после пилинга"))
)

(defrule rule_136
    (product_feature "противовоспалительный")
    (user_fact procedure_types "Механическая чистка")
    =>
    (assert (result "1"))
    (assert (info "1, противовоспалительное средство, может помочь успокоить кожу после механической чистки"))
)

(defrule rule_137
    (product_feature "противовоспалительный")
    (user_fact weather "Солнечная")
    =>
    (assert (result "0"))
    (assert (info "0, противовоспалительное средство, может повышать фоточувствительность кожи, рекомендуется носить SPF"))
)

(defrule rule_138
    (product_feature "ароматизированный")
    (user_fact has_allergy "Да")
    =>
    (assert (result "0"))
    (assert (info "0, средство содержит ароматизаторы — частая причина раздражений и аллергий"))
)

(defrule rule_139
    (product_feature "неароматизированный")
    (user_fact has_allergy "Да")
    =>
    (assert (result "1"))
    (assert (info "1, в средстве нет ароматизаторов, может подойти при наличии аллергий"))
)

(defrule rule_140
    (product_feature "гидрофильный")
    (user_fact sensitive_skin "Да")
    =>
    (assert (result "1"))
    (assert (info "1, гидрофильное средство, если является очищающим, то может обеспечить мягкое очищение кожи"))
)

(defrule rule_141
    (product_feature "гидрофильный")
    (user_fact makeup "Да")
    =>
    (assert (result "1"))
    (assert (info "1, гидрофильное средство, если является очищающим, то может обеспечить мягкое очищение кожи после макияжа"))
)

(defrule rule_142
    (product_feature "нежирный")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "1"))
    (assert (info "1, нежирное средство, подойдет для жирного типа кожи"))
)

(defrule rule_143
    (product_feature "нежирный")
    (user_fact weather "Тёплая")
    =>
    (assert (result "1"))
    (assert (info "1, нежирное средство, подойдет в теплую погоду"))
)

(defrule rule_144
    (product_feature "плотный")
    (user_fact skin_type "Сухая")
    =>
    (assert (result "1"))
    (assert (info "1, средство с плотной текстурой, глубоко питает, подойдет для сухого типа кожи"))
)

(defrule rule_145
    (product_feature "плотный")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "0"))
    (assert (info "0, средство с плотной текстурой, может не подойти для жирной кожи"))
)

(defrule rule_146
    (product_feature "плотный")
    (user_fact tendencies "Шелушения")
    =>
    (assert (result "1"))
    (assert (info "1, средство с плотной текстурой, глубоко питает, подойдет при шелушениях"))
)

(defrule rule_147
    (product_feature "плотный")
    (user_fact weather "Холодная")
    =>
    (assert (result "1"))
    (assert (info "1, средство с плотной текстурой, глубоко питает, рекомендуется в холодную погоду"))
)

(defrule rule_148
    (product_feature "легкий")
    (user_fact skin_type "Жирная")
    =>
    (assert (result "1"))
    (assert (info "1, средство с легкой текстурой, подойдет для жирной кожи"))
)

(defrule rule_149
    (product_feature "легкий")
    (user_fact weather "Тёплая")
    =>
    (assert (result "1"))
    (assert (info "1, средство с легкой текстурой, подойдет в теплую погоду"))
)

(defrule new_to_retinol
    (element "Retinol")
    =>
    (assert (info "Если раньше не пользовались ретинолом, начинайте с малого количества и постепенно увеличивайте дозу, чтобы избежать раздражения."))
)
(defrule sun-warning
  (weather "Солнечная")
  (or
    (element "Retinol")
    (element "Blue Retinol Bakuchiol")
    (element "Retinol Acetate")
    (element "Retinol Palmitate")
    (element "Retinal")
    (element "Retinyl Propionate")
    (element "Retinol Retinoate")
    (element "Retinol encapsulated and liposomal form")
    (element "AHA-acids")
    (element "Lactic Acid")
    (element "Glycolic Acid")
    (element "Mandelic Acid 2–10 %* рН = 3–4")
    (element "BHA-acids")
    (element "Salicylic Acid 0.5–2 % pH = 3–4")
    (element "salicylic acid")
    (element "salicylic")
    (element "PHA-acids")
    (element "Lactobionic Acid")
    (element "Gluconolactone 2–10 % pH = 3–4")
    (element "Gluconolactone")
    (element "Azelaic Acid")
    (element "Benzoyl Peroxide 2.5–5 %")
    (element "Benzoyl Peroxide")
  )
  =>
  (assert (info "Поскольку погода солнечная и используются фотосенсибилизирующие компоненты, обязательно применяйте SPF 50+ для защиты кожи."))
)