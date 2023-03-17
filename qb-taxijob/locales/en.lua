local Translations = {
    error = {
        ["already_mission"] = "Вече изпълнявате мисия на NPC",
        ["not_in_taxi"] = "Не сте в таксито", 
        ["missing_meter"] = "Това превозно средство няма таксиметров уред",
        ["no_vehicle"] = "Не сте в превозно средство", 
        ["not_active_meter"] = "Таксиметровият уред не е активен", 
        ["no_meter_sight"] = "Няма таксиметров уред", 
    },
    success = {},
    info = {
        ["person_was_dropped_off"] = "Лицето беше оставено!",
        ["npc_on_gps"] = "Клиента е посочен на вашия GPS", 
        ["go_to_location"] = "Закарайте клиента до определеното място", 
        ["vehicle_parking"] = "[E] МПС-гараж", 
        ["job_vehicles"] = "[E] Работно МПС",
        ["drop_off_npc"] = "[E] Оставете Клиента",
        ["call_npc"] = "[E] Клиента да се качи в таксито",
        ["blip_name"] = "Таксиметрова компания",
        ["taxi_label_1"] = "Таксиметров автомобил", 
    },
    menu = {
        ["taxi_menu_header"] = "Автомобили", 
        ["close_menu"] = "⬅ Затвори менюто", 
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
})