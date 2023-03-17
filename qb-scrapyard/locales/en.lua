local Translations = {
    error = {
        smash_own = "Не можете да разбиете превозно средство, което има притежател.",
        cannot_scrap = "Това превозно средство не може да бъде бракувано.",
        not_driver = "Вие не сте шофьорът",
        demolish_vehicle = "Сега нямате право да разрушавате превозни средства",
        canceled = "Отказано",
    },
    text = {
        scrapyard = 'Двор за скрап',
        disassemble_vehicle = '~g~E~w~ - Разглобете превозното средство',
        email_list = "~g~E~w~ - Изпратен Ви е имейл на списък с превозни средства",
        demolish_vehicle = "Разрушаване на превозно средство",
    },
    email = {
        sender = "Авторазбиването на Turner",
		subject = "Списък с МПС-та",
		message = "Можете да разглабяте само определен брой превозни средства.<br />Може да запазите всичко от разглабянето за вас, стига да не ви хванат!<br /><br /><strong>Лист с МПС-та:</strong><br />",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})