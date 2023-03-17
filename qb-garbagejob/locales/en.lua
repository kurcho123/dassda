local Translations = {
    error = {
        ["cancled"] = "Отказано",
        ["no_truck"] = "Нямаш камион, брат!",
        ["not_enough"] = "Нямаш достатъчно кинти ,(%{value} ти трябват!)",
        ["too_far"] = "Далеч си!",
        ["early_finish"] = "Има места които не си обиколил..амаа айде от мен да мине!",
        ["never_clocked_on"] = "Не си започнал работа братчето!",
    },
    success = {
        ["clear_routes"] = "Cleared users routes they had %{value} routes stored",
        ["pay_slip"] = "Ти взе $%{total} кинта!",
    },
    info = {
        ["payslip_collect"] = "~g~E~w~ - Payslip",
        ["payslip"] = "Payslip",
        ["not_enough"] = "Нямаш достатъчно пари за депозит.. Депозитът е: $%{value}",
        ["deposit_paid"] = "$%{value}, Депозитът е плтен!",
        ["no_deposit"] = "Нямате платен депозит за това превозно средство..",
        ["truck_returned"] = "Супер работа свърши, ходи си вземи парите!",
        ["bags_left"] = "%{value} чувал/а остават!",
        ["bags_still"] = "%{value} чувал/а остават!",
        ["all_bags"] = "Изхвърли всички боклуци,давай към следващата локация!",
        ["depot_issue"] = "Имаше проблем в депото, моля, върнете се незабавно!",
        ["done_working"] = "Приключихте с работата! Върнете се в депото.",
        ["started"] = "Започнахте работа, местоположението е отбелязано на GPS-а!",
        ["grab_garbage"] = "[E] вземи чувала с боклук.",
        ["stand_grab_garbage"] = "[E]",
        ["dispose_garbage"] = "[E] изхвърли чувала с боклук.",
        ["progressbar"] = "Хвърляш боклука ..",
        ["garbage_in_truck"] = "Хвърли торбата в камиона..",
        ["stand_here"] = "[E]",
        ["found_crypto"] = "Намери крипто стик на земята",
        ["payout_deposit"] = "(+ $%{value} депозит)",
        ["store_truck"] =  "~g~E~w~ - Store Garbage Truck",
        ["get_truck"] =  "~g~E~w~ - Garbage Truck",
    },
    warning = {},
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
