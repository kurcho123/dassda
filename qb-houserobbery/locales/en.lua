local Translations = {
    error = {
        ["missing_something"] = "Изглежда, че нещо ви липсва...",
        ["not_enough_police"] = "Няма достатъчно ченгета на смяна..",
        ["door_open"] = "Вратата вече е отворена..",
        ["process_cancelled"] = "Процесът е отменен..",
        ["didnt_work"] = "Не проработи..",
        ["emty_box"] = "Кутията е празна..",
    },
    success = {
        ["worked"] = "Проработи!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})