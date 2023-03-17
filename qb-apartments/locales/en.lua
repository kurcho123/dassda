local Translations = {
    error = {
        to_far_from_door = 'Вие сте много далеч от звънеца на вратата',
        nobody_home = 'Няма никой вкъщи..',
    },
    success = {
        receive_apart = 'Имаш апартамент',
        changed_apart = 'Преместихте апартаменти',
    },
    info = {
        at_the_door = 'Някой е на вратата!',
    },
    text = {
        enter = 'Влезте в апартамент',
        ring_doorbell = 'Звънене на вратата',
        logout = 'Заспивайте',
        change_outfit = 'Сменте дрехи',
        open_stash = 'Отвори шкаф',
        move_here = 'Преместете се тук',
        open_door = 'Отвори вратата',
        leave = 'Излез от апартамента',
        close_menu = '⬅ Затвори менюто',
        tennants = 'Tennants',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
