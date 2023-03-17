Config = Config or {}

--░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░
--██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░
--██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░
--██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░
--╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗
--░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝

Config.EnableWeed = false -- Enable it in case of using qs-weed DLC.

-- It is recommended to leave RemoveRain to true, it will avoid puddles!
Config.RemoveRain = true -- Recommended to use this function, it eliminates rain particles without generating puddles, but it allows you to see storm and weather.
Config.WeatherSync = 'qb-weathersync' -- Allowed weathersync scripts are 'cd_easytime' 'vSync' and 'qb-weathersync' (for vSync you must download my modification) 

-- Mortgage payment system.
Config.CreditEq = 0.3 -- Payment Percentage.
Config.CreditTime = 60 -- Every how many minutes will the payments be made, by default it is 60 minutes, one hour.

Config.VisitTime = 1 -- Minutes available to visit the house (1 = 1 minute)
Config.RealestateCommands = true --Enable or disable the createhouse and addgarage commands.
Config.RealestatePermissions = true --If true, Realestate will be able to enter all houses, they will even be able to show their interiors to buyers.
Config.RealestateMenu = true --If true, Realestate will be able to open a menu to create, delete or polyzone houses

Config.Realestatejob = { -- This will be the jobs that can create houses.
  ['realestate'] = true,
  ['realestateagent'] = true,
  --['police'] = true,
} 

Config.SocietyJobPayout = { -- !!IMPORTANT!! Currently only Supports QBCore qb-management by default. If you use another society script then make changes to accordingly below in the options below.
  SocietyName = "none", -- set to "none" to disable. Society Name which you would like to recieve the money for selling a house.
  SocietyScript = "qb-management", -- Supports qb-management by default. If you use a custom society script then set to "custom" and edit the custom section in "qs-housing:server:SocietyJobPayout" event in config_server.lua.
  PercentageToRecieve = 100 -- Percentage of sale which the society account will recieve.
}

Config.EnableDeleteHousesRealEstate = true -- Remove houses for realestate?
Config.RealEstateReceiveMoneyForSell = true -- Set true if the realestate would receive money for the house sale.

-- ESX configs real estate society start.
Config.PayToRealEstateSocietyAccount = false -- Receive money in the society instead of directly to the realestate agent. (Config.RealEstateReceiveMoneyForSell needs to be true).
Config.SocietyJobToReceiveMoney = 'realestate' -- Name the job of the society.
Config.EnableBossMenu = false -- Enable boss menu?
-- ESX configs real estate society finish.

Config.PercentageForSell = 25 -- Percentage the realstate agent would earn for every house selled
Config.MinZOffset = 30 --This is the distance below the ground, where the house will be generated, I recommend you not to touch this.

Config.PoliceRaidItemAllow = true --Enable or disable the object for the police to raid.
Config.Policejob = 'police' --Here you can choose your police system.
Config.MinimumPoliceGrade = 2 -- Set the minimum grade of the police officer to be able to raid a house
Config.ItemRequired = 'police_stormram' --This is the item needed to initiate the raids.
Config.RamsNeeded = 2 --This will be the number of times you must do the minigame before opening a door.
Config.TimeAutoCloseDoor = 1 -- Minutes

Config.HouseRobbery = false --If you activate this, the players will be able to rob the houses.
Config.RequiredCops = 0 --Minimum number of police officers available to initiate house robberies.
Config.RobberyItem = 'lockpick' --This is the item needed to rob the houses.
Config.LockpickBrokenChance = 50 --You can modify the chance that the item will break, if you place 0, it will never break, if you place 100, it will always break.

Config.LimitOfHouses = 5 -- 0 if a player can buy unlimited houses, set a higher number if you want to set a limit of houses a player can have at the same time

Config.FeesAndTaxes = true -- Enable or disable fees and taxes in house sale.
Config.SellHouse = true -- Option to sell the house back to the goverment
Config.PercentageSell = 50 -- Percentage you receive when you sell the house (0-100)
Config.WordToSell = 'sell' -- Word to confirm selling

Config.UsingQuasarPhone = false -- Set true if you are using qs-smartphone.

Config.CommandHouseMenuMlo = 'house' -- Name of the command to open the house menu inside your mlo

Config.LimitOfKeys = 5 -- Limit of keys that can be owned by house.

Config.HouseBuyAccount = 'bank' -- Buy house from the state with cash or bank money

Config.DebugMode = false -- This config will show the green areas in the map.

Config.ShowMenuHouse = true -- Show the menu with the next options inside the house
Config.MenuOptions = {
    invite = true,
    givehousekey = true,
    removehousekey = true,
    toggledoorlock = true,
    decorate = true,
    setwardrobe = true,
    setstash = true,
    setcharger = false, -- Option available for qs-smartphone 1.2.2 or higher.
    setlogout = true,
    sellhouse = true,
}

Config.Commands = { --Here you can modify each command or even add it to your menus.
    ['createhouse'] = 'createhouse', --Event: qs-housing:client:createHouses
    ['addgarage'] = 'addgarage', --Event: qs-housing:client:addGarage
    ['setpolyzone'] = 'setpolyzone', --Event: qs-housing:client:setPolyZone
    ['givehousekey'] = 'givehousekey', --Event: qs-housing:client:giveHouseKey
    ['removehousekey'] = 'removehousekey', --Event: qs-housing:client:removeHouseKey
    ['toggledoorlock'] = 'toggledoorlock', --Event: qs-housing:client:toggleDoorlock
    ['decorate'] = 'decorate', --Event: qs-housing:client:decorate
    ['setwardrobe'] = 'setwardrobe', --Event: qs-housing:client:setLocation
    ['setstash'] = 'setstash', --Event: qs-housing:client:setLocation
    ['setchargespot'] = 'setchargespot', --Event: qs-housing:client:setLocation
    ['setlogout'] = 'setlogout', --Event: qs-housing:client:setLocation
    ['ring'] = 'ring', --Event: qs-housing:client:RequestRing
    ['decoratefix'] = 'decoratefix', --Event: SetNuiFocus(true, true)
    ['deletehouse'] = 'deletehouse', --Event: qs-housing:client:deletehouse
}

Config.HelpText = { --Here you can edit the help texts for each command.
    ['createhouse'] = 'Create a house at this location.',
    ['addgarage'] = 'Create a garage for the nearest house.',
    ['setpolyzone'] = 'Add a PolyZone if this house doesnt have one.',
    ['givehousekey'] = 'Give house keys.',
    ['removehousekey'] = 'Remove keys from the house.',
    ['toggledoorlock'] = 'Close the door of the house.',
    ['repairdoor'] = 'Repair the door after theft or police raid.',
    ['decorate'] = 'Decorate your home.',
    ['setwardrobe'] = 'Create a wardrobe in this location.',
    ['setstash'] = 'Create a stash at this location.',
    ['setchargespot'] = 'Create a plug to charge your Smartphone.',
    ['setlogout'] = 'Create a logout at this location.',
    ['price_info'] = 'Select a price for the house.',
    ['housing_type'] = 'The house will be an MLO? (An actual map)',
    ['deletehouse'] = 'Command to delete a nearby house',
}


--██╗░░░██╗██╗░██████╗██╗░░░██╗░█████╗░██╗░░░░░  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
--██║░░░██║██║██╔════╝██║░░░██║██╔══██╗██║░░░░░  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
--╚██╗░██╔╝██║╚█████╗░██║░░░██║███████║██║░░░░░  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
--░╚████╔╝░██║░╚═══██╗██║░░░██║██╔══██║██║░░░░░  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
--░░╚██╔╝░░██║██████╔╝╚██████╔╝██║░░██║███████╗  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
--░░░╚═╝░░░╚═╝╚═════╝░░╚═════╝░╚═╝░░╚═╝╚══════╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

Config.ShowAvailableHouses = true --If you desactivate this function, the available houses will not appear.
Config.ShowOwnedHouses = false --If you desactivate this function, the houses that already have an owner will not appear.

Config.ShowNameOfAllHouses = true -- Show the name of all the houses as blips

Config.Blips = { --Change the colors, size and everything you want of the blips.
    ["SetBlipSprite"] = 40, 
    ["SetBlipDisplay"] = 4, 
    ["SetBlipScale"] = 0.45,
    ["SetBlipAsShortRange"] = true,
    ["SetBlipColour"] = 0,
    ["SetBlipColourOwner"] = 3,
}

function SendTextMessage(msg, type) --You can add your notification system here for simple messages.
    if type == 'inform' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)
    
        --MORE EXAMPLES OF NOTIFICATIONS.
        --exports['qs-core']:Notify(msg, "primary")
        --exports['mythic_notify']:DoHudText('inform', msg)
    end
    if type == 'error' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)
    
        --MORE EXAMPLES OF NOTIFICATIONS.
        --exports['qs-core']:Notify(msg, "error")
        --exports['mythic_notify']:DoHudText('error', msg)
    end
    if type == 'success' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)
    
        --MORE EXAMPLES OF NOTIFICATIONS.
        --exports['qs-core']:Notify(msg, "success")
        --exports['mythic_notify']:DoHudText('success', msg)
    end
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(true)
  AddTextComponentString(text)
  SetDrawOrigin(x,y,z, 0)
  DrawText(0.0, 0.0)
  local factor = (string.len(text)) / 370
  DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
  ClearDrawOrigin()
end

function DrawGenericText(text)
	SetTextColour(186, 186, 186, 255)
	SetTextFont(4)
	SetTextScale(0.478, 0.478)
	SetTextWrap(0.0, 1.0)
	SetTextCentre(false)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 205)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.40, 0.00)
end


--░██████╗████████╗░█████╗░░██████╗██╗░░██╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║░░██║
--╚█████╗░░░░██║░░░███████║╚█████╗░███████║
--░╚═══██╗░░░██║░░░██╔══██║░╚═══██╗██╔══██║
--██████╔╝░░░██║░░░██║░░██║██████╔╝██║░░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝

-- You can choose between these options: 'ox', 'disc', 'esx' (Default esx menu),'m3', 'np', 'qb', 'qs' 'mf', 'ci' (Cheeze-inventory) or 'custom' (In mf-inventory add locales: house_storage = "Housing Stash")
-- If you're up for something more advanced, feel free to set 'advanced' and modify each stash by tier yourself, in the AdvancedStashes function.
Config.StashType = 'qb' -- 'ox', 'disc', 'esx', 'm3', 'np', 'qb', 'qs' 'mf', 'ci', 'custom' or 'advanced'.
Config.AdvancedStashesDebug = false -- Enable or disable the debug, it will be shown when opening a stash inside the house using the 'advanced' mode.

Config.Weight = { -- Only for 'mf' and 'ox' now.
  maxWeight = 9500000,
  maxSlots = 50,
}

Config.ObjectStash = { -- Hash of the objets you want to be storage places.
  [`ch_prop_ch_service_locker_01a`] = true,
  [`ch_prop_ch_service_locker_02a`] = true,
}

function CustomStash(CurrentHouse) --If you choose the 'custom' option, you can add your stash system here.
  TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse)
  TriggerEvent("inventory:client:SetCurrentStash", CurrentHouse)
end

--To use this mode, by default it requires qs-inventory or qb-inventory, to use another, you have to configure it yourself.
--This mode allows you to create different stashes depending on the tier of your shell.
function AdvancedStashes(CurrentHouse)
    QSHousing.TriggerServerCallback('qs-housing:server:HouseTier', function(tier)
        print('The house tier for ' .. CurrentHouse..' is ' .. tier)
        Wait(100)
        if tier == 15 or tier == 99 then
            print("Size 1", tier)
            TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse, {
              maxweight = 10000000, -- Max Weight In Grams
              slots = 500, -- Max Slots
            })
        elseif tier == 6 or tier == 19 or tier == 20 or tier == 21 or tier == 26 then
            print("Size 2", tier)
            TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse, {
              maxweight = 7500000, -- Max Weight In Grams
              slots = 200, -- Max Slots
            })
        elseif tier == 3 or tier == 22 or tier == 23 or tier == 24 or tier == 25 then
            print("Size 3", tier)
            TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse, {
              maxweight = 5500000, -- Max Weight In Grams
              slots = 100, -- Max Slots
            })
        elseif tier == 2 or tier == 7 or tier == 10 or tier == 18 or tier == 27 then
            print("Size 4", tier)
            TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse, {
              maxweight = 3500000, -- Max Weight In Grams
              slots = 75, -- Max Slots
            })
        else
            print("Size 5", tier)
            TriggerServerEvent("inventory:server:OpenInventory", "stash", CurrentHouse, {
              maxweight = 2500000, -- Max Weight In Grams
              slots = 50, -- Max Slots
            })
        end
    end, CurrentHouse)

    TriggerEvent("inventory:client:SetCurrentStash", CurrentHouse)
end


--░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░██████╗░░█████╗░██████╗░███████╗
--░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝
--░╚██╗████╗██╔╝███████║██████╔╝██║░░██║██████╔╝██║░░██║██████╦╝█████╗░░
--░░████╔═████║░██╔══██║██╔══██╗██║░░██║██╔══██╗██║░░██║██╔══██╗██╔══╝░░
--░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║██████╔╝██║░░██║╚█████╔╝██████╦╝███████╗
--░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝░╚════╝░╚═════╝░╚══════╝

Config.OutfitType = 'qb' --You can choose between these options: 'esx', 'fivem-appearance', 'np', 'qb', 'rcore' or custom.

Config.ObjectWardrobe = { -- Hash of the objets you want to be wardrobe places.
    [`v_res_tre_wardrobe`] = true,
    [`p_cs_locker_01_s`] = true,
    [`v_res_tre_storageunit`] = true,
    [`v_res_mcupboard`] = true,
    [`v_serv_cupboard_01`] = true,
}

function CustomOutfit(ClotheMenu) -- If you choose the 'custom' option, you can add your clothes system here.
    TriggerEvent('raid_clothes:openmenu')
end

--██╗░░░░░░█████╗░░██████╗░░█████╗░██╗░░░██╗████████╗
--██║░░░░░██╔══██╗██╔════╝░██╔══██╗██║░░░██║╚══██╔══╝
--██║░░░░░██║░░██║██║░░██╗░██║░░██║██║░░░██║░░░██║░░░
--██║░░░░░██║░░██║██║░░╚██╗██║░░██║██║░░░██║░░░██║░░░
--███████╗╚█████╔╝╚██████╔╝╚█████╔╝╚██████╔╝░░░██║░░░
--╚══════╝░╚════╝░░╚═════╝░░╚════╝░░╚═════╝░░░░╚═╝░░░

-- If you use QBCore, place qb in the following option, which will execute the event 'qb-multicharacter:client:chooseChar'.
-- If you use ESX, there is no logout system here, but you can use the 'drop' option to generate a Drop Player, or the custom option to customize your event.

Config.Logout = 'qb' -- 'qb', 'drop' or 'custom'.

function CustomLogout(Logout) -- If you selected the custom option, add here the code of your choice.
    local src = source
    DropPlayer(src, "You have been disconnected from the server.")
end

--██╗███╗░░██╗████████╗███████╗██████╗░███╗░░██╗░█████╗░██╗░░░░░
--██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗████╗░██║██╔══██╗██║░░░░░
--██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝██╔██╗██║███████║██║░░░░░
--██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗██║╚████║██╔══██║██║░░░░░
--██║██║░╚███║░░░██║░░░███████╗██║░░██║██║░╚███║██║░░██║███████╗
--╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝

CreatingHouse = {} -- Leave this config as default.

Debug = true -- Enable Debug?

CameraOptions = { -- Leave this config as default.
    lookSpeedX = 500.0,
    lookSpeedY = 500.0,
    moveSpeed = 10.0,
    climbSpeed = 10.0,
    rotateSpeed = 50.0,
}

Config.Houses = {} -- Leave this config as default.
Config.Debug = false -- Ignore.