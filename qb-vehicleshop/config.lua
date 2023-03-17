Config = {}
Config.UsingTarget = true -- If you are using qb-target (uses entity zones to target vehicles)
Config.Commission = 0.15 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0  -- max height of the shop zone
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Магазин за автомобили', -- Blip name
        ['showBlip'] = true,  --- true or false
        ['Categories'] = { -- Categories available to browse
            ['sedans'] = 'Седан',
            ['suvs'] = 'SUVs',
            ['coupes'] = 'Купета',
            ['offroad'] = 'Офроуд',
            ['muscle'] = 'Американски мускули',
            ['compacts'] = 'Градски',
            ['vans'] = 'Ванове'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-23.6, -1094.5, 27.31, 336.2), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-42.38, -1102.09, 26.3, 341.13), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-36.78, -1093.11, 26.3, 111.17),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2',
            },
            [3] = {
                coords = vector4(-47.79, -1091.23, 26.3, 188.67),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
            },
            [4] = {
                coords = vector4(-54.95, -1097.16, 26.3, 301.93),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero',
            },
            [5] = {
                coords = vector4(-49.6, -1083.25, 26.3, 156.15),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            }
        },
    },
    ['hillbillies'] = {
        ['Type'] = 'managed',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-1273.3784179688, -353.36376953125),
                vector2(-1277.5583496094, -359.61752319336),
                vector2(-1267.4377441406, -379.89401245118),
                vector2(-1246.5111083984, -368.78201293946),
                vector2(-1212.2390136718, -350.70401000976),
                vector2(-1226.923461914, -329.3727722168)
            },
            ['minZ'] = 36.907600402832,  -- min height of the shop zone
            ['maxZ'] = 62.05164718628  -- max height of the shop zone
        },
        ['Job'] = 'cardealer2', -- Name of job or none
        ['ShopLabel'] = 'Chan Autos', -- Blip name
        ['showBlip'] = true,  --- true or false
        ['Categories'] = { -- Categories available to browse
            ['sportsclassic'] = 'Спортни Класически',
			['custom'] = 'Вносни коли',
			['super'] = 'Супер Коли',
		    ['sports'] = 'Спортни',
			['light'] = 'Не продавай',
			['dev'] = 'Нови за проба',
			['krumov'] = 'Крумовици'
        },
        ['TestDriveTimeLimit'] = 1.0, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1268.97, -364.41, 37.18), -- Blip Location
        ['ReturnLocation'] = vector3(-1242.24, -356.3, 36.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1234.21, -345.29, 36.68, 28.1), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1269.06, -364.45, 36.18, 122.47), -- where the vehicle will spawn on display
                defaultVehicle = 'comet3', -- Default display vehicle
                chosenVehicle = 'comet3', -- Same as default but is dynamically changed when swapping vehicles
            },
			[2] = {
                coords = vector4(-1264.35, -354.88, 36.18, 26.4), -- where the vehicle will spawn on display
                defaultVehicle = 'elegy', -- Default display vehicle
                chosenVehicle = 'elegy', -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(-1270.72, -358.69, 36.18, 72.0),
                defaultVehicle = 'furia',
                chosenVehicle = 'furia',
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(2513.1052246094, 4081.7385253906),
                vector2(2516.4267578125, 4085.5766601562),
                vector2(2534.3229980468, 4121.7915039062),
                vector2(2522.4099121094, 4127.6650390625),
                vector2(2514.310546875, 4111.4033203125),
                vector2(2504.5339355468, 4091.4968261718),
                vector2(2505.6372070312, 4090.9448242188),
                vector2(2503.4836425782, 4086.529296875)
            },
            ['minZ'] = 38.514751434326,
            ['maxZ'] = 39.031066894532
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'LostMC Motorcycles',
        ['showBlip'] = true,  --- true or false
        ['Categories'] = {
            ['custommotor'] = 'Вносни мотори',
			['donor'] = 'Донор коли НЕ СЕ ПРОДАВАТ',
            ['motorcycles'] = 'Мотори',
            ['cycles'] = 'Колелa'
        },
        ['TestDriveTimeLimit'] = 1.0,
        ['Location'] = vector3(2525.54, 4117.83, 38.58),
        ['ReturnLocation'] = vector3(2525.09, 4115.02, 38.58),
        ['VehicleSpawn'] = vector4(2524.59, 4122.04, 38.58, 59.24),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(2519.28, 4116.71, 37.57, 60.43),
                defaultVehicle = 'hakuchou2',
                chosenVehicle = 'hakuchou2',
            }
        }
    } -- Add your next table under this comma
}
