local Translations = {
    error = {
        canceled = 'Откажи',
        max_ammo = 'Максимален капацитет на боеприпасите',
        no_weapon = 'Нямаш оръжие.',
        no_support_attachment = 'Това оръжие не поддържа тези модификации.',
        no_weapon_in_hand = 'Нямаш оръжие в ръката си.',
        weapon_broken = 'Това оръжие е счупено и не може да се използва.',
        no_damage_on_weapon = 'Това оръжие не е повредено..',
        weapon_broken_need_repair = 'Оръжието ви е счупено, трябва да го поправите, преди да можете да го използвате отново.',
        attachment_already_on_weapon = 'Вече имате  %{value} на оръжието си.'
    },
    success = {
        reloaded = 'Презаредено'
    },
    info = {
        loading_bullets = 'Зареждане на куршуми',
        repairshop_not_usable = 'Сервизът в този момент е ~r~NOT~w~ използваем.',
        weapon_will_repair = 'Вашето оръжие ще бъде ремонтирано.',
        take_weapon_back = '[E] - Вземете оръжието обратно',
        repair_weapon_price = '[E] Поправяне на оръжието, ~g~$%{value}~w~',
        removed_attachment = 'Вие премахнахте %{value} от оръжието си!',
        hp_of_weapon = 'Издръжливост на вашето оръжие'
    },
    mail = {
        sender = 'Тайрон',
        subject = 'Поправка',
        message = 'Твоя %{value} е ремонтиран, можете да го вземете на място. <br><br> Peace out madafaka'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
