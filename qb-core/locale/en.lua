local Translations = {
    error = {
        not_online = 'Персонажа не е на линия',
        wrong_format = 'Неправилен формат',
        missing_args = 'Не всеки аргумент е въведен (x, y, z)',
        missing_args2 = 'Всички аргументи трябва да бъдат попълнени!',
        no_access = 'Нямате достъп до тази команда!',
        company_too_poor = 'Вашият работодател е фалирал',
        item_not_exist = 'Артикулът не съществува',
        too_heavy = 'Инвентарът е твърде пълен'
    },
    success = {},
    info = {
        received_paycheck = 'Получихте заплатата си от $%{value}',
        job_info = 'Работа: %{value} | Длъжност: %{value2} | смяна: %{value3}',
        gang_info = 'Gang: %{value} | Grade: %{value2}',
        on_duty = 'Вие сте на смяна!',
        off_duty = 'Вие сте извън смяна!'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
