local Translations = {
    error = {
        negative = 'Опитвате се да продадете отрицателна количество?',
        no_melt = 'Не си ми дал нищо за стопяване...',
        no_items = 'Няма достатъчно артикули',
    },
    success = {
        sold = 'Вие сте продали %{value} x %{value2} за $%{value3}',
        items_received = 'Получихте %{value} x %{value2}',
    },
    info = {
        title = 'Заложна къща',
        subject = 'Топящи се предмети',
        message = 'Приключихме с топенето на вашите артикули. Можете да дойдете да ги вземете по всяко време.',
        open_pawn = 'Бачкам в момента',
        sell = 'Давай да купум брат',
        sell_pawn = 'Продай артикулите аз знам какво да ги правя',
        melt = 'Разтопете елементи',
        melt_pawn = 'Отворете цеха за топене',
        melt_pickup = 'Вземете разтопени артикули',
        pawn_closed = 'В момента съм напушен и не ми се бачка',
        sell_items = 'Давам ти макс $%{value}',
        back = '⬅ Върни се',
        melt_item = 'Разтопете %{value}',
        max = 'Максимална сума %{value}',
        submit = 'Разтопи',
        melt_wait = 'Дай ми %{value} минути и ще накарам нещата ти да се стопят',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})