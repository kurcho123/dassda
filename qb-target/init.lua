function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 6.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt
Config.OpenControlKey = 19 -- Control for keypress detection also Left Alt for the eye itself, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection on the context menu, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
    ["boxzone1"] = {
        name = "MissionRowDutyClipboard",
        coords = vector3(441.7989, -982.0529, 30.67834),
        length = 0.45,
        width = 0.35,
        heading = 11.0,
        debugPoly = false,
        minZ = 30.77834,
        maxZ = 30.87834,
        options = {
            {
                type = "client",
                event = "qb-policejob:ToggleDuty",
                icon = "fas fa-sign-in-alt",
                label = "Влез на смяна",
                job = "police",
            },
        },
        distance = 2.5
    },
	["boxzone2"] = {
        name = "Ballas Stash",
        coords = vector3(109.3, -1983.05, 20.96),
        length = 1.7,
        width = 1.0,
        heading = 290,
        debugPoly = false,
        minZ = 17.61,
        maxZ = 21.61,
        options = {
            {
                type = "client",
                event = "Dob4oo:openGangStash",
                icon = "fas fa-sign-in-alt",
                label = "Склад",
            },
        },
        distance = 2.5
    },
	["policerequest3"] = {
        name = "Гардероб",
        coords = vector3(120.93, -1969.45, 21.33),
        length = 0.8,
        width = 1.3,
        heading = 22,
        debugPoly = false,
        minZ = 18.18,
        maxZ = 22.18,
        options = {
            {
                type = "client",
                event = "Dob4oo:openGangClothing",
                icon = "fas fa-sign-in-alt",
                label = "Гардероб",
            },
        },
        distance = 2.5
    },
	["BurgershotDuty"] = {
		name = "BurgershotDuty",
		coords = vector3(-1191.48, -900.53, 14.25),
		length = 1.1,
		width = 0.3,
		heading = 212.0,
		debugPoly = false,
		minZ = 14.25,
		maxZ = 15.33,
		options = {
        {
			type = "client",
			targeticon = 'fas fa-eye', 
			event = "qb-burgershotjob:DutyB",
            icon = "far fa-clipboard",
            label = "На смяна/Извън смяна",
            job = "burgershot",
        }
    },
    distance = 3.0
    },
	["BurgerShotJob"] = {
        name = "BurgerShotJob",
        coords = vector3(-1196.64, -904.80, 13.04),
        length = 0.8,
        width = 2.5,
        heading = 302,
        debugPoly = false,
        minZ = 13.04,
        maxZ = 14.50,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:startjob",
                icon = "far fa-clipboard",
                label = "Започни работа",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
	["BurgersCounter"] = {
        name = "BurgersCounter",
        coords =vector3(-1198.558, -897.416, 13.830132),
        length = 0.9,
        width = 1,
        heading = 125,
        debugPoly = false,
        minZ = 13.00,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotmenu:burgershotmainmanu",
                icon = "fas fa-hamburger",
                label = "Burgershot Бургер Меню",
                job = "burgershot",
            }

        },
        distance = 3.0
    },
    ["BurgershotWashHands"] = {
        name = "BurgershotWasHands",
        coords = vector3(-1200.291, -901.0861, 13.975964),
        length = 0.8,
        width = 0.7,
        heading = 123.5,
        debugPoly = false,
        minZ = 13.53,
        maxZ = 14.29,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershot:washHands",
                icon = "fas fa-hand-holding-water",
                label = "Измийте ръцете си!",
                job = "burgershot",
            }

        },
        distance = 3.0
    },
	["SodaFountain"] = {
        name = "SodaFountain",
        coords = vector3(-1200.03, -895.47, 14.74),
        length = 1.1,
        width = 2.1,
        heading = 125,
        debugPoly = false,
        minZ = 14.00,
        maxZ = 14.73,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotmenu:DrinkMenu",
                icon = "fas fa-filter",
                label = "Меню с Напитки",
                job = "burgershot",
            }

        },
        distance = 3.0
    },
    ["TomatoCounter"] = {
        name = "TomatoCounter",
        coords = vector3(-1198.447, -898.4566, 13.664762),
        length = 1.0,
        width = 1.1,
        heading = 29.83,
        debugPoly = false,
        minZ = 13.00,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:makeTomato",
                icon = "fas fa-hamburger",
                label = "Нарежете домати",
                job = "burgershot",
            },
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:makeOnions",
                icon = "fas fa-hamburger",
                label = "Нарежете лук",
                job = "burgershot",
            }

        },
        distance = 3.0
    },
    ["Fries"] = {
        name = "Fries",
        coords = vector3(-1202.03, -898.62, 13.03),
        length = 1,
        width = 1.6,
        heading = 302.5,
        debugPoly = false,
        minZ = 13.03,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:PrepareFries",
                icon = "fas fa-box",
                label = "Изпържи картофи",
                job = "burgershot",
            },
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:PrepareOnionRings",
                icon = "fas fa-box",
                label = "Приготви лучени пръстени",
                job = "burgershot",
            },
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:PrepareChickenNuggets",
                icon = "fas fa-box",
                label = "Приготви Пилешки хапки",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
    ["MeatGrill"] = {
        name = "MeatGrill",
        coords = vector3(-1202.83, -897.28, 13.98),
        length = 0.8,
        width = 1.45,
        heading = 304.5,
        debugPoly = false,
        minZ = 13.99,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:BakeMeat",
                icon = "fas fa-box",
                label = "Изпечи сурофо кюфте",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
    ["catcafemenu"] = {
        name = "CatcaffeMenu",
        coords = vector3(-586.90, -1066.55, 22.34),
        length = 0.45,
        width = 0.35,
        heading = 11.0,
        debugPoly = false,
        minZ = 22.34,
        maxZ = 22.50,
        options = {
            {
                type = "command",
                event = "catcaffemenuu",
                icon = "fas fa-sign-in-alt",
                label = "Меню",
            },
        },
        distance = 2.5
    },
	["DriveThruWindow"] = {
        name = "DriveThruWindow",
        coords = vector3(-1193.82, -906.99, 12.79),
        length = 1,
        width = 2,
        heading = 171.50,
        debugPoly = false,
        minZ = 12.79,
        maxZ =  15.40,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:DriveThru",
                icon = "fas fa-box",
                label = "Drive Thru",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
    ["FrontCounterTray1"] = {
        name = "FrontCounterTray1",
        coords = vector3(-1196.01, -891.45, 14.03),
        length = 0.5,
        width = 0.5,
        heading = 122,
        debugPoly = false,
        minZ = 14.03,
        maxZ = 14.30,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:Tray1",
                icon = "fas fa-box",
                label = "Табла 1",
            }
        },
        distance = 3.0
    },
    ["FrontCounterTray2"] = {
        name = "FrontCounterTray2",
        coords = vector3(-1194.67, -893.23, 14.03),
        length = 0.5,
        width = 0.5,
        heading = 122,
        debugPoly = false,
        minZ = 14.03,
        maxZ = 14.30,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:Tray2",
                icon = "fas fa-box",
                label = "Табла 2",
            }
        },
        distance = 3.0
    },
    ["HotTrayStorage"] = {
        name = "HotTrayStorage",
        coords = vector3(-1197.56, -894.57, 13.00),
        length = 1,
        width = 4.5,
        heading = 304.5,
        debugPoly = false,
        minZ = 13.00,
        maxZ = 14.87,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:Storage",
                icon = "fas fa-box",
                label = "Склад",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
	["BurgerFridge"] = {
        name = "BurgerFridge",
        coords = vector3(-1196.63, -902.0, 13.05),
        length = 0.8,
        width = 1.55,
        heading = 32.5,
        debugPoly = false,
        minZ = 13.05,
        maxZ = 15.47,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:FoodStorage",
                icon = "fas fa-box",
                label = "Хладилник",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
    ["UnloadBurgeshotIngredients"] = {
        name = "UnloadBurgeshotIngredients",
        coords = vector3(-1204.985, -891.8149, 13.984722),
        length = 4,
        width = 4,
        heading = 214,
        debugPoly = false,
        minZ = 13.00,
        maxZ = 15.49,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:Unloadbox",
                icon = "fas fa-box",
                label = "Разтоварете стоките",
                job = "burgershot",
            }
        },
        distance = 3.0
    },
    ["Icecream"] = {
        name = "Ice Cream",
        coords = vector3(-1193.029, -895.7907, 14.0616),
        length = 1,
        width = 1.6,
        heading = 302.5,
        debugPoly = false,
        minZ = 13.03,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:icecream",
                icon = "fas fa-ice-cream",
                label = "Направете сладолед",
                job = "burgershot",
            }
        },
        distance = 1.5
    },
    ["donut"] = {
        name = "Donut",
        coords = vector3(-1203.854, -895.6851, 14.44202),
        length = 1,
        width = 1.6,
        heading = 302.5,
        debugPoly = false,
        minZ = 13.03,
        maxZ = 14.91,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:donut",
                icon = "fas fa-box",
                label = "Вземете поничка",
                job = "burgershot",
            },
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershotjob:creampie",
                icon = "fas fa-box",
                label = "Вземете парче крем пай",
                job = "burgershot",
            }
        },
        distance = 1.5
    },
	["BSRegister1"] = {
        name = "BSRegister1",
        coords = vector3(-1195.27, -892.34, 13.98),
        length = 0.7,
        width = 0.7,
        heading = 90.5,
        debugPoly = false,
        minZ = 14.23,
        maxZ = 14.45,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershot:registermenu",
                icon = "fas fa-credit-card",
                label = "Отвори регистъра",
                job = "burgershot",
            },
        },
        distance = 3.0
    },
	["BSRegister2"] = {
        name = "BSRegister2",
        coords = vector3(-1194.27, -893.87, 14.06),
        length = 0.7,
        width = 0.7,
        heading = 90.5,
        debugPoly = false,
        minZ = 14.23,
        maxZ = 14.45,
        options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
                event = "qb-burgershot:registermenu",
                icon = "fas fa-credit-card",
                label = "Отвори регистъра",
                job = "burgershot",
            },
        },
		distance = 3.0
		},
		["vinnysWarehouse"] = {
            name = "vinnysWarehouse",
            coords = vector3(858.65527, -3202.554, 5.994996),
            length = 2.5,
            width = 1.1,
            heading = 93.5,
            debugPoly = false,
            minZ = 5.0,
            maxZ = 7.29,
            options = {
                --pizza this
                {
                    type = "client",
                    targeticon = 'fas fa-eye', 
                    event = "qb-pizzathis:Warehousebuypallet",
                    icon = "far fa-clipboard",
                    label = "Вземете стока",
                    job = "pizzathis",
                },
                {
                    type = "client",
                    targeticon = 'fas fa-eye', 
                    event = "qb-uwujob:Warehousebuypallet",
                    icon = "far fa-clipboard",
                    label = "Вземете стока",
                    job = "uwu",
                },
                {
                    type = "client",
                    targeticon = 'fas fa-eye', 
                    event = "qb-bahama:Warehousebuypallet",
                    icon = "far fa-clipboard",
                    label = "Вземете стока",
                    job = "bahama",
                },
                {
                    type = "client",
                    targeticon = 'fas fa-eye', 
                    event = "qb-burgershotjob:Warehousebuypallet",
                    icon = "far fa-clipboard",
                    label = "Вземете стока",
                    job = "burgershot",
                },
                {
                    type = "client",
                    targeticon = 'fas fa-eye', 
                    event = "qb-pearls:Warehousebuypallet",
                    icon = "far fa-clipboard",
                    label = "Вземете стока",
                    job = "pearls",
                },
            },
            distance = 3.0
        },
    ["mechaniclocker1"] = {
        name = "Гардероб",
        coords = vector3(883.25, -2100.06, 30.46),
        length = 1,
        width = 2,
        heading = 355,
        debugPoly = false,
        minZ = 27.66,
        maxZ = 31.66,
        options = {
            {
                type = "client",
                event = "qb-clothing:client:openOutfitMenu",
                icon = "fas fa-sign-in-alt",
                label = "Гардероб",
            },
        },
        distance = 2.5
    },
    ["lostmclocker"] = {
        name = "Гардероб",
        coords = vector3(2519.89, 4100.99, 35.59),
        length = 0.6,
        width = 2,
        heading = 334,
        debugPoly = false,
        minZ = 32.49,
        maxZ = 36.49,
        options = {
            {
                type = "client",
                event = "Floki:openGangClothing",
                icon = "fas fa-sign-in-alt",
                label = "Гардероб",
            },
        },
        distance = 2.5
    },
    ["lostmcstash"] = {
        name = "Stash",
        coords = vector3(2512.48, 4098.26, 35.59),
        length = 1.4,
        width = 1,
        heading = 335,
        debugPoly = false,
        minZ = 31.59,
        maxZ = 35.59,
        options = {
            {
                type = "client",
                event = "Floki:openGangStash",
                icon = "fas fa-sign-in-alt",
                label = "Stash",
            },
        },
        distance = 2.5
    },
	["policerequest"] = {
        name = "PoliceRequest",
        coords = vector3(442.3, -979.94, 30.69),
        length = 0.3,
        width = 0.5,
        heading = 240,
        debugPoly = false,
        minZ = 26.94,
        maxZ = 30.94,
        options = {
            {
                type = "client",
                event = "qbpoliceform:openmenu",
                icon = "fas fa-sign-in-alt",
                label = "Кандидатствай за полицейска академия",
            },
        },
        distance = 2.5
    },
    ["mechanicbossmenu"] = {
        name = "Шефско меню",
        coords = vector3(887.83, -2099.31, 34.89),
        length = 0.5,
        width = 0.5,
        heading = 0,
        debugPoly = false,
        minZ = 31.49,
        maxZ = 35.49,
        options = {
            {
                type = "client",
                event = "qb-bossmenu:client:openMenu",
                icon = "fas fa-sign-in-alt",
                label = "Шефско меню",
            },
        },
        distance = 2.5
    },
}
	

Config.PolyZones = {

}

Config.TargetBones = {
	-- ["mechanic"] = {
    --     bones = {
    --         "door_dside_f",
    --         "door_dside_r",
    --         "door_pside_f",
    --         "door_pside_r"
    --     },
    --     options = {
    --         {
    --             type = "client",
    --             event = "craft:vehmenu",
    --             icon = "fad fa-key",
    --             label = "Vehicle Menu",
    --             job = "mechanic",
    --         },
    --         {
    --             type = "client",
    --             event = "vehiclekeys:client:GiveKeys",
    --             icon = "fad fa-key",
    --             label = "Дай ключове",
    --         },
    --         {
    --             type = "client",
    --             event = "police:client:PutPlayerInVehicle",
    --             icon = "fas fa-chevron-circle-left",
    --             label = "Вкарай в кола",
    --         },
    --         {
    --             type = "client",
    --             event = "police:client:SetPlayerOutVehicle",
    --             icon = "fas fa-chevron-circle-right",
    --             label = "Изкарай от кола",
    --         },
    --         {
    --             type = "client",
    --             event = "police:client:ImpoundVehicle",
    --             icon = "fas fa-car",
    --             label = "Конфискувани МПС-та",
    --             job = 'police'
    --         },
    --     },
    --     distance = 3.0
    -- }, 
}


Config.TargetEntities = {

}

Config.TargetModels = {
	["stealing"] = {
        models = {
            "v_ret_247shelves01",
            "v_ret_247shelves02",
            "v_ret_247shelves03",
            "v_ret_247shelves04",
            "v_ret_247shelves05"
        },
        options = {
            {
                type = "client",
                event = "qb-shoplifting:client:doStuff",
                icon = "fas fa-toolbox",
                label = "Shoplift",
            }
        },
        distance = 1.0
    },
	["BurgershotGarage"] = {
		models = {
		    `csb_talcc`,
		},
		options = {
            {
                type = "client",
                targeticon = 'fas fa-eye', 
            	event = "qb-burgershotmenu:menu",
                icon = "fas fa-car",
				label = "BurgerShot Гараж",
                job = "burgershot",
                canInteract  = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                    local dist = #(GetEntityCoords(PlayerPedId()) - vector3(-1177.112, -892.277, 13.909599))
                    if dist > 6 then
                        return false  -- This will return false if the entity interacted with is a player and otherwise returns true
                    elseif dist < 7 then 
                        return true 
                    end
                end,
            },
		},
		distance = 3.0
	},
	["trashsearch"] = {
        models = {
		-1096777189,
		666561306,
		1437508529,
		-1426008804,
		-228596739,
		161465839,
		651101403,
        -58485588,
        218085040,
        -206690185,
        },
        options = {
            {
                type = "client",
                event = "qb-trashsearch:client:searchtrash",
                icon = "fas fa-dumpster",
                label = "Рови в кофата",
            },
        },
        distance = 3.0
    },
    ["crafting"] = {
        models = {
            "mp_f_deadhooker",
        },
        options = {
            {
                type = "client",
                event = "floki:opencraftmenu",
                icon = "fas fa-wrench",
                label = "Кака Мими",
            },
        },
        distance = 2.5,
    },
}

Config.Peds = {
{ ------------crafting-------------
    model = 'mp_f_deadhooker',
    coords = vector4(2049.18, 3204.55, 44.19, 170.49),
    gender = 'female',
    freeze = true,
    invincible = true,
    blockevents = true,
},
{ ------------crafting-------------
    model = 'g_f_y_lost_01',
    coords = vector4(1089.11, 6511.78, 20.08, 185.44),
    gender = 'female',
    freeze = true,
    invincible = true,
    blockevents = true,
},
{ ------------crafting-------------
    model = 'a_f_y_tourist_01',
    coords = vector4(1089.11, 6511.78, 20.08, 185.44),
    gender = 'female',
    freeze = true,
    invincible = true,
    blockevents = true,
},
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
    

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
    options = {
        {
            type = "client",
            event = "qb-phone:client:GiveContactDetails",
            icon = "fas fa-address-book",
            label = "Дай визитка",
        },
        {
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Обири човек",
        },
        {
            type = "client",
            event = "police:client:CuffPlayer",
            icon = "fas fa-hands",
            label = "Cuff / Uncuff",
            job = "police",
            item = 'Сложи белезници',
        },
        {
          type = "client",
          event = "police:client:EscortPlayer",
          icon = "fas fa-key",
          label = "Ескорт",
        },
        {
            type = "client",
            event = "police:client:PutPlayerInVehicle",
            icon = "fas fa-chevron-circle-left",
            job = 'police',
            label = "Вкарай в кола",
        },
        {
            type = "client",
            event = "police:client:SetPlayerOutVehicle",
            icon = "fas fa-chevron-circle-right",
            job = 'police',
            label = "Изкарай от кола",
        },
    }
}




-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		AddEventHandler('playerSpawned', function()
			if not firstSpawn then
				SpawnPeds()
				firstSpawn = true
			end
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
