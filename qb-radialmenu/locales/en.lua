local Translations = {
    error = {
        no_people_nearby = "Няма играчи наблиз",
        no_vehicle_found = "Няма намерено превозно средство",
        extra_deactivated = "Extra %{extra} has been deactivated",
        extra_not_present = "Extra %{extra} is not present on this vehicle",
        not_driver = "Вие не сте шофьор на превозното средство",
        vehicle_driving_fast = "Това превозно средство се движи твърде бързо",
        seat_occupied = "Това място е заето",
        race_harness_on = "Имате състезателен колан, не можете да превключите",
        obj_not_found = "Не можа да се създаде исканият обект",
        not_near_ambulance = "Не сте близо до линейка",
        far_away = "Ти си твърде далеч",
        stretcher_in_use = "Тази носилка вече се използва",
        not_kidnapped = "Ти не си отвлякъл този човек",
        trunk_closed = "Багажникът е затворен",
        cant_enter_trunk = "Не можете да влезете в този багажник",
        already_in_trunk = "Вече си в багажника",
        someone_in_trunk = "Някой вече е в багажника"
    },
    success = {
        extra_activated = "Екстрата %{extra} е активирана",
        entered_trunk = "Ти си в багажника"
    },
    info = {
        no_variants = "Явно няма варианти за това",
        wrong_ped = "Този пед модел не позволява тази опция",
        nothing_to_remove = "Изглежда, че нямате какво да премахнете",
        already_wearing = "Вече носиш това",
        switched_seats = "Сега сте на %{seat}"
    },
    general = {
        command_description = "Отворете менюто",
        push_stretcher_button = "~g~E~w~ - Бутай носилката",
        stop_pushing_stretcher_button = "~g~E~w~ - Спри да буташ",
        lay_stretcher_button = "~g~G~w~ - Легни на носилка",
        push_position_drawtext = "Натиснете тук",
        get_off_stretcher_button = "~g~G~w~ - Стани от носилката",
        get_out_trunk_button = "[~g~E~w~] Излез от багажника",
        close_trunk_button = "[~g~G~w~] Затвори багажника",
        open_trunk_button = "[~g~G~w~] Отвори багажника",
        getintrunk_command_desc = "Влез в багажник",
        putintrunk_command_desc = "Вкарай в багажника"
    },
    options = {
        emergency_button = "Авариен бутон",
        driver_seat = "Шофьорска седалка",
        passenger_seat = "Пътническа седалка",
        other_seats = "Друга седалка",
        rear_left_seat = "Задна лява седалка",
        rear_right_seat = "Задна дясна седалка"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})