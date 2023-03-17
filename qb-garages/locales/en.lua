local Translations = {
    error = {
        no_vehicles = "На това място няма превозни средства!",
        not_impound = "Вашето превозно средство не е задържано",
        not_owned = "Това превозно средство не може да се съхранява",
        not_correct_type = "Тук не можете да съхранявате този тип превозно средство",
        not_enough = "Нямате достатъчно пари",
        no_garage = "Нито един",
    },
    success = {
        vehicle_parked = "МПС е в гаража",
    },
    menu = {
        header = {
            house_car = "House Garage %{value}",
            public_car = "Public Garage %{value}",
            public_sea = "Public Boathouse %{value}",
            public_air = "Public Hangar %{value}",
            job_car = "Job Garage %{value}",
            job_sea = "Job Boathouse %{value}",
            job_air = "Job Hangar %{value}",
            gang_car = "Gang Garage %{value}",
            gang_sea = "Gang Boathouse %{value}",
            gang_air = "Gang Hangar %{value}",
            depot_car = "Конфискувани %{value}",
            depot_sea = "Конфискувани %{value}",
            depot_air = "Конфискувани %{value}",
            vehicles = "Налични превозни средства",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Напуснете гаража",
            sea = "⬅ Leave Boathouse",
            air = "⬅ Leave Hangar",
        },
        text = {
            vehicles = "Преглед на превозни средства!",
            depot = "Plate: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
            garage = "State: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        }
    },
    status = {
        out = "Изход",
        garaged = "В гаража",
        impound = "конфискуван от полицията",
    },
    info = {
        car_e = "~g~E~w~ - Гараж",
        sea_e = "~g~E~w~ - Лодки",
        air_e = "~g~E~w~ - Хангар",
        park_e = "~g~E~w~ - МПС е в гаража",
        house_garage = "Гараж",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
