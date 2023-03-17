local Translations = {
    error = {
        lockpick_fail = "Ти се провали",
        door_not_found = "Не получих модел хеш, ако вратата е прозрачна, уверете се, че сте се прицелили в рамката на вратата",
        same_entity = "Двете врати не могат да бъдат едно и също същество",
        door_registered = "Тази врата вече е регистрирана",
        door_identifier_exists = "Врата с този идентификатор вече съществува в конфигурацията. (%s)",
    },
    success = {
        lockpick_success = "Успяхте да отворите вратата"
    },
    general = {
        locked = "Заключено",
        unlocked = "Отключено",
        locked_button = "[E] - Заключено",
        unlocked_button = "[E] - Отключено",
        keymapping_description = "Interact with door locks",
        keymapping_remotetriggerdoor = "Remote trigger a door",
        locked_menu = "Locked",
        pickable_menu = "Lockpickable",
        cantunlock_menu = 'Cant Unlock',
        hidelabel_menu = 'Hide Door Label',
        distance_menu = "Max Distance",
        item_authorisation_menu = "Item Authorsation",
        citizenid_authorisation_menu = "CitizenID Authorisation",
        gang_authorisation_menu = "Gang Authorisation",
        job_authorisation_menu = "Job Authorisation",
        doortype_title = "Door Type",
        doortype_door = "Single Door",
        doortype_double = "Double Door",
        doortype_sliding = "Single Sliding Door",
        doortype_doublesliding = "Double Sliding Door",
        doortype_garage = "Garage",
        dooridentifier_title = "Unique Identifier",
        doorlabel_title = "Door Label",
        configfile_title = "Config File Name",
        submit_text = "Submit",
        newdoor_menu_title = "Add a new door",
        newdoor_command_description = "Add a new door to the doorlock system",
        doordebug_command_description = "Toggle debug mode",
        warning = "Warning",
        created_by = "created by",
        warn_no_permission_newdoor = "%{player} (%{license}) tried to add a new door without permission (source: %{source})",
        warn_no_authorisation = "%{player} (%{license}) attempted to open a door without authorisation (Sent: %{doorID})",
        warn_wrong_doorid = "%{player} (%{license}) attempted to update invalid door (Sent: %{doorID})",
        warn_wrong_state = "%{player} (%{license}) attempted to update to an invalid state (Sent: %{state})",
        warn_wrong_doorid_type = "%{player} (%{license}) didn't send an appropriate doorID (Sent: %{doorID})",
        warn_admin_privilege_used = "%{player} (%{license}) opened a door using admin privileges"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})