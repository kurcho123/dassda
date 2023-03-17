local Translations = {
    error = {
        ["failed_notification"] = "Грешка!",
        ["not_near_veh"] = "Не сте близо до превозно средство!",
        ["out_range_veh"] = "You are too far from the vehicle!",
        ["inside_veh"] = "Вие сте твърде далеч от превозното средство!",
        ["healthy_veh"] = "Превозното средство е твърде здраво и се нуждае от по-добри инструменти!",
        ["inside_veh_req"] = "Трябва да сте в превозно средство, за да го поправите!",
        ["roadside_avail"] = "Налична е пътна помощ, обадете се чрез вашия телефон!",
        ["no_permission"] = "Нямате разрешение за ремонт на превозни средства",
        ["fix_message"] = "%{message}, and now go to a garage!",
        ["veh_damaged"] = "Вашият автомобил е твърде повреден!",
        ["nofix_message_1"] = "Погледнахте нивото на маслото си и това изглеждаше нормално",
        ["nofix_message_2"] = "Погледнахте мотора си и нищо не изглежда нередно",
        ["nofix_message_3"] = "Погледнахте тиксо на маркуча си за масло и изглеждахте добре",
        ["nofix_message_4"] = "Увеличихте радиото. Странният шум от двигателя вече е изчезнал",
        ["nofix_message_5"] = "Препаратът за отстраняване на ръжда, който използвахте, нямаше ефект",
        ["nofix_message_6"] = "Никога не се опитвайте да правите нещо, което не е счупено, но не сте слушали",
    },
    success = {
        ["cleaned_veh"] = "МПС-то е изчистено!",
        ["repaired_veh"] = "МПС-то е поправено!",
        ["fix_message_1"] = "Проверихте нивото на маслото",
        ["fix_message_2"] = "Затворихте петролния разлив с дъвка",
        ["fix_message_3"] = "Направихте маркуча за масло с тиксо",
        ["fix_message_4"] = "You have temporarily stopped the oil leak",
        ["fix_message_5"] = "You kicked the bike and it works again",
        ["fix_message_6"] = "You removed some rust",
        ["fix_message_7"] = "You yelled at your car, and it works again",
    },
    progress = {
        ["clean_veh"] = "МПС-то е изчистено...",
        ["repair_veh"] = "МПС-то е поправено..",

    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})