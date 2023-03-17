Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level

ConsumeablesEat = {
    ["sandwich"] = math.random(10, 20),
    ["tosti"] = math.random(10, 20),
    ["twerks_candy"] = math.random(10, 20),
    ["snikkel_candy"] = math.random(10, 20),
    ["apple"] = math.random(10, 20),
    ["beef"] = math.random(10, 20),
    ["slicedpie"] = math.random(10, 20),
    ["corncob"] = math.random(10, 20),
    ["canofcorn"] = math.random(10, 20),
    ["grapes"] = math.random(10, 20),
    ["greenpepper"] = math.random(5, 10),
    ["chillypepper"] = math.random(5, 10),
    ["tomato"] = math.random(5, 10),
    ["tomatopaste"] = math.random(10, 20),
    ["cooked_bacon"] = math.random(35, 50),
    ["cooked_sausage"] = math.random(35, 50),
    ["cooked_pork"] = math.random(35, 50),
    ["cooked_ham"] = math.random(35, 50),
    ["sushirolls"] = math.random(10, 20), -- 1
    ["pizzaslice"] = math.random(10, 20), -- 2
    ["cookie"] = math.random(10, 20), -- 3
    ["muffin"] = math.random(10, 20), -- 4
    ["fries"] = math.random(10, 20), -- 5
    ["donut"] = math.random(10, 20), -- 6
    ["icecream"] = math.random(10, 20), -- 7
    ["cupcake"] = math.random(10, 20), -- 8
    ["gum"] = math.random(3, 8), -- 9
    ["ramen"] = math.random(10, 20), -- 10
	["burger-bleeder"] = math.random(34, 54),
    ["burger-moneyshot"] = math.random(37, 56),
    ["burger-heartstopper"] = math.random(45, 65),
    ["burger-meatfree"] = math.random(30, 40),
    ["burger-torpedo"] = math.random(30, 42),
    ["burger-fries"] = math.random(15, 25),
    ["burger-chickennuggets"] = math.random(15, 35),
    ["burger-onionrings"] = math.random(10, 20),
    ["burger-icecream"] = math.random(7,10),
    ["burger-donut"] = math.random(6, 10),
    ["burger-donutchoc"] = math.random(6, 10),
    ["burger-donutcherry"] = math.random(6, 10),
    ["burger-donutlemon"] = math.random(6, 10),
    ["burger-donutglaze"] = math.random(6, 10),
    ["burger-creampie"] = math.random(6, 10),
    ["uwupancake"] = math.random(25, 34),
    ["uwubudhabowl"] = math.random(50, 60),
    ["uwusushi"] = math.random(45, 50),
    ["uwucupcake"] = math.random(40, 45),
    ["uwuvanillasandy"] = math.random(50, 65),
    ["uwuchocsandy"] = math.random(50, 65),
}

ConsumeablesDrink = {
    ["sprite"] = math.random(10, 20), -- 1
    ["pepsi"] = math.random(10, 20), -- 2
    ["mtndew"] = math.random(10, 20), -- 3
    ["lemonade"] = math.random(10, 20), -- 4
    ["pinklemonade"] = math.random(10, 20), -- 5
    ["icedtea"] = math.random(10, 20), -- 6
    ["milk"] = math.random(10, 20), -- 7
    ["fanta"] = math.random(10, 20), -- 8
    ["drpepper"] = math.random(10, 20), -- 9
    ["fruitpunch"] = math.random(10, 20), -- 10
    ["water_bottle"] = math.random(10, 20),
    ["kurkakola"] = math.random(10, 20),
    ["burger-softdrink"] = math.random(35, 54),
    ["burger-coffee"] = math.random(35, 54),
    ["burger-milkshake"] = math.random(35, 54),
    ["coffee"] = math.random(10, 20),
    ["apple_juice"] = math.random(10, 20),
    ["grapejuice"] = math.random(10, 20),
    ["hotsauce"] = math.random(10, 20),
    ["uwububbleteablueberry"] = math.random(55, 60),
    ["uwububbletearose"] = math.random(55, 60),
    ["uwububbleteamint"] = math.random(55, 60),
    ["uwumisosoup"] = math.random(80, 90),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
	[`technical`] = true,
	[`dune3`] = true,
    [`technical3`] = true,
    [`apc`] = true,
	[`Blazer5`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
	[`Besra`] = true,
	[`Dune2`] = true,
	[`kuruma2`] = true,
	[`insurgent`] = true,
	[`insurgent2`] = true,
	[`insurgent3`] = true,
	[`limo2`] = true,
	[`technical2`] = true,
	[`technical`] = true,
	[`valkyrie`] = true,
	[`valkyrie2`] = true,
	[`barracks`] = true,
	[`barracks2`] = true,
	[`barracks3`] = true,
	[`crusader`] = true,
	[`policeb`] = true,
	[`DEATHBIKE`] = true,
	[`DEATHBIKE2`] = true,
	[`Polmav`] = true,
	[`Cargobob`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
	[`s_m_y_swat_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Да се качиш в асансьор'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Слезте с асансьора'
        },

    },
	--Court @ entrance
    [2] = {
        [1] = {
            coords = vector4(236.55, -408.46, 47.92, 338.27),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез в съда'
        },
        [2] = {
            coords = vector4(252.65, -420.79, -22.82, 258.82),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез от съда'
        },

    },
    --Coke Processing Enter/Exit
    [3] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
    [4] = {
        [1] = {
            coords = vector4(-68.87, -2671.04, 6.0, 358.94),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(1138.0, -3198.67, -39.67, 356.59),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [5] = {
        [1] = {
            coords = vector4(-1315.44, -3407.09, 13.94, 149.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(902.87, -3182.49, -97.05, 90.55),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [6] = {
        [1] = {
            coords = vector4(-2174.08, 212.05, 184.6, 295.07),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(997.37, -3200.96, -36.39, 266.45),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [7] = {
        [1] = {
            coords = vector4(488.57, -1499.31, 29.23, 283.72),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-68.41, -813.95, 285.0, 170.18),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [8] = {
        [1] = {
            coords = vector4(-533.66, 4652.93, 89.79, 287.79),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(2727.13, -360.37, -52.0, 187.09),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [9] = {
        [1] = {
            coords = vector4(-117.03, -604.65, 36.28, 254.43),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-139.34, -620.84, 168.82, 98.92),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
	[10] = {
        [1] = {
            coords = vector4(330.03, -600.77, 43.28, 61.3),
            ["AllowVehicle"] = false,
            drawText = '[E] Слез на паркинга'
        },
        [2] = {
            coords = vector4(339.72, -584.57, 28.8, 76.35),
            ["AllowVehicle"] = false,
            drawText = '[E] Качи се в болницата'
        },
    },
    [11] = {
        [1] = {
            coords = vector4(822.76, -2338.64, 30.33, 354.19),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(1094.37, -3196.64, -38.99, 358.51),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [12] = {
        [1] = {
            coords = vector4(-142.15, -638.0, 168.82, 280.35),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-137.17, -596.31, 206.92, 243.63),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [13] = {
        [1] = {
            coords = vector4(-1379.65, -499.07, 33.16, 186.68),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-1399.37, -482.07, 72.04, 9.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [14] = {
        [1] = {
            coords = vector4(-1842.62, -341.29, 49.45, 134.49),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-1828.82, -336.55, 84.06, 139.32),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [15] = {
        [1] = {
            coords = vector4(-761.75, 352.08, 88.0, 357.46),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-768.92, 336.79, 243.38, 92.28),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [16] = {
        [1] = {
            coords = vector4(138.87, -762.96, 45.75, 162.27),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(136.23, -761.92, 242.15, 160.88),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
	[17] = {
        [1] = {
            coords = vector4(310.01, -929.95, 29.47, 162.27),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(310.0, -930.07, 52.81, 160.88),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [18] = {
        [1] = {
            coords = vector4(141.01, -765.82, 45.75, 159.08),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-70.12, -812.11, 326.08, 133.26),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [19] = {
        [1] = {
            coords = vector4 (-1075.56, -252.96, 44.02, 27.66),
            ["AllowVehicle"] = false,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-1072.26, -246.39, 54.01, 298.48),
            ["AllowVehicle"] = false,
            drawText = '[E] Излез'
        },
    },
    [20] = {
        [1] = {
            coords = vector4 (-1224.36, -348.34, 36.69, 299.14),
            ["AllowVehicle"] = true,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(-1231.68, -352.14, 39.92, 117.91),
            ["AllowVehicle"] = true,
            drawText = '[E] Излез'
        },
    },
    [21] = {
        [1] = {
            coords = vector4(4313.72, 7991.85, 92.84, 57.12),
            ["AllowVehicle"] = true,
            drawText = '[E] Влез'
        },
        [2] = {
            coords = vector4(761.94, -1866.1, 29.29, 258.9),
            ["AllowVehicle"] = true,
            drawText = '[E] Излез'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Автомивка",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Автомивка",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Автомивка",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Автомивка",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Автомивка",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
