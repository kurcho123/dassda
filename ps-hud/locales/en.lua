local Translations = {
    notify = {
        ["hud_settings_loaded"] = "Настройките на HUD са заредени!",
        ["hud_restart"] = "HUD е рестартиран!",
        ["hud_start"] = "HUD е стартиран!",
        ["hud_command_info"] = "Тази команда нулира текущите ви настройки!",
        ["load_square_map"] = "Зареждане на квадратна карта...",
        ["loaded_square_map"] = "Квадратна карта е заредена !",
        ["load_circle_map"] = "Зареждане на кръгова карта...",
        ["loaded_circle_map"] = "Кръглия Map е зареден!",
        ["cinematic_on"] = "Кино режим е включен!",
        ["cinematic_off"] = "Кино режим е изключен!",
        ["engine_on"] = "Двигателя е запален!",
        ["engine_off"] = "Двигателя е загасен!",
        ["low_fuel"] = "Светна ти лампата на горивото!",
        ["access_denied"] = "Не сте упълномощени!",
        ["stress_gain"] = "Чувствате се стресиран! Не е добре за теб!",
        ["stress_removed"] = "Чувствате се по-спокойно!"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
