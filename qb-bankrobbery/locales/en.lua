local Translations = {
    success = {
        success_message = "Успешен",
        fuses_are_blown = "Бушоните са изгорели",
        door_has_opened = "Вратата се отвори"
    },
    error = {
        cancel_message = "Отменен",
        safe_too_strong = "Изглежда ключалката на сейфа е твърде силна...",
        missing_item = "Липсва ви нещо...",
        bank_already_open = "Банката вече е отворена...",
        minimum_police_required = "Трябва да има %{police} полицая на смяна",
        security_lock_active = "Защитната ключалка е активна, отварянето на вратата в момента не е възможно",
        wrong_type = "%{receiver} did not receive the right type for argument '%{argument}'\nreceived type: %{receivedType}\nreceived value: %{receivedValue}\n expected type: %{expected}",
        fuses_already_blown = "Предпазителите вече са изгорели...",
        event_trigger_wrong = "%{event}%{extraInfo} се задейства, когато не са изпълнени някои условия, източник: %{source}",
        missing_ignition_source = "Липсва ти източник на запалване"
    },
    general = {
        breaking_open_safe = "Разбиване на сейфа...",
        connecting_hacking_device = "Свързване на хакерското устройство...",
        fleeca_robbery_alert = "Опит за банков обир на Fleeca",
        paleto_robbery_alert = "Опит за обир на спестовна банка Blain County",
        pacific_robbery_alert = "Опит за обир на Pacific Standard Bank",
        break_safe_open_option_target = "Разбийте сейфа",
        break_safe_open_option_drawtext = "[E] Разбийте сейфа",
        validating_bankcard = "Валидираща карта...",
        thermite_detonating_in_seconds = "Термитът се задейства след %{time} second(s)",
        bank_robbery_police_call = "10-90: Банков обир"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
