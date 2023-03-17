AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
SharedGarages = false   --True == Gang and job garages are shared, false == Gang and Job garages are personal

Garages = {
    ["motelgarage"] = {
        label = "Motel Parking",
        takeVehicle = vector3(273.43, -343.99, 44.91),
        spawnPoints = {
            vector4(270.94, -342.96, 43.97, 161.5),
        },
        putVehicle = vector3(276.69, -339.85, 44.91),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["sapcounsel"] = {
        label = "San Andreas Parking",
        takeVehicle = vector3(-330.01, -780.33, 33.96),
        spawnPoints = {
            vector4(-334.44, -780.75, 33.96, 137.5),
        },
        putVehicle = vector3(-336.31, -774.93, 33.96),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["maracash"] = {
        label = "maracash Parking",
        takeVehicle = vector3(1368.9, 1148.2, 113.76),
        spawnPoints = {
            vector4(1368.9, 1148.2, 113.76, 180.98),
        },
        putVehicle = vector3(1368.9, 1148.2, 113.76),
        showBlip = false,
        blipName = "Maracash",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',                 --car, air, sea
		job = "maracash"
    },
    ["spanishave"] = {
        label = "Spanish Ave Parking",
        takeVehicle = vector3(-1160.86, -741.41, 19.63),
        spawnPoints = {
            vector4(-1163.88, -749.32, 18.42, 35.5),
        },
        putVehicle = vector3(-1147.58, -738.11, 19.31),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["tekila"] = {
        label = "Bar Parking",
        takeVehicle = vector3(-559.99, 301.69, 83.16),
        spawnPoints = {
            vector4(-556.75, 301.54, 83.19, 340.96),
        },
        putVehicle = vector3(-559.99, 301.69, 83.16),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["svatba"] = {
        label = "Паркинг",
        takeVehicle = vector3(-1527.71, 85.48, 56.61),
        spawnPoints = {
            vector4(-1525.71, 85.48, 56.61, 166.65),
        },
        putVehicle = vector3(-1527.71, 85.48, 56.61),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["bolnica"] = {
        label = "Паркинг Болница",
        takeVehicle = vector3(-1863.62, -354.8, 49.26),
        spawnPoints = {
            vector4(-1871.18, -352.51, 49.25, 46.59),
        },
        putVehicle = vector3(-1863.62, -354.8, 49.26),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["taksitaqko"] = {
        label = "Паркинг таксита",
        takeVehicle = vector3(916.02, -170.54, 74.41),
        spawnPoints = {
            vector4(913.28, -168.8, 74.3, 145.03),
        },
        putVehicle = vector3(916.02, -170.54, 74.41),
        showBlip = false,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["security"] = {
        label = "Parking",
        takeVehicle = vector3(-689.1, 261.01, 81.09),
        spawnPoints = {
            vector4(-696.33, 257.99, 80.91, 112.87),
        },
        putVehicle = vector3(-689.1, 261.01, 81.09),
        showBlip = false,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["cockatoosPark"] = {
        label = "Bahama Mama Parking",
        takeVehicle = vector3(-1397.65, -584.18, 30.2),
        spawnPoints = {
            vector4(-1405.13, -588.2, 30.29, 121.82),
        },
        putVehicle = vector3(-1397.65, -584.18, 30.2),
        showBlip = true,
        blipName = "Bahama Mama Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["chanautos"] = {
        label = "Chan Autos",
        takeVehicle = vector3(-1274.14, -372.91, 36.63),
        spawnPoints = {
            vector4(-1279.49, -372.48, 35.91, 28.27),
        },
        putVehicle = vector3(-1262.64, -381.84, 35.7),
        showBlip = false,
        blipName = "Chan Autos",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["taxi"] = {
        label = "Taxi",
        takeVehicle = vector3(-1606.25, -817.06, 10.02),
        spawnPoints = {
            vector4(-1608.5, -814.37, 10.03, 144.44),
        },
        putVehicle = vector3(-1606.25, -817.06, 10.02),
        showBlip = false,
        blipName = "Taxi",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["custom"] = {
        label = "Custom",
        takeVehicle = vector3(850.48, -2102.04, 30.52),
        spawnPoints = {
            vector4(851.11, -2098.39, 30.54, 268.43),
        },
        putVehicle = vector3(850.48, -2102.04, 30.52),
        showBlip = false,
        blipName = "Custom",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["vanillaunicorn"] = {
        label = "Vanilla Parking",
        takeVehicle = vector3(150.75, -1311.95, 29.2),
        spawnPoints = {
            vector4(153.89, -1307.59, 29.2, 60.3),
        },
        putVehicle = vector3(150.75, -1311.95, 29.2),
        showBlip = false,
        blipName = "Vanilla Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["uwu"] = {
        label = "Cat Parking",
        takeVehicle = vector3(-579.65, -1091.11, 22.18),
        spawnPoints = {
            vector4(-573.62, -1090.82, 22.18, 261.0),
        },
        putVehicle = vector3(-579.65, -1091.11, 22.18),
        showBlip = false,
        blipName = "Cat Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["bolnicastara"] = {
        label = "Болница Паркинг",
        takeVehicle = vector3(289.21, -605.76, 43.18),
        spawnPoints = {
            vector4(284.55, -602.11, 43.18, 333.82),
        },
        putVehicle = vector3(289.21, -605.76, 43.18),
        showBlip = false,
        blipName = "Cat Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["dai"] = {
        label = "Dai Be",
        takeVehicle = vector3(804.32, -820.8, 26.18),
        spawnPoints = {
            vector4(817.14, -820.71, 26.2, 358.12),
        },
        putVehicle = vector3(817.14, -820.71, 26.2),
        showBlip = false,
        blipName = "Dai Be",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["triad1"] = {
        label = "Triad1",
        takeVehicle = vector3(-842.39, -701.08, 27.3),
        spawnPoints = {
            vector4(-835.34, -678.85, 27.43, 0.77),
        },
        putVehicle = vector3(-842.39, -701.08, 27.3),
        showBlip = false,
        blipName = "Triad1",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["triad2"] = {
        label = "Triad2",
        takeVehicle = vector3(-817.53, -727.82, 23.78),
        spawnPoints = {
            vector4(-816.71, -734.99, 23.78, 180.56),
        },
        putVehicle = vector3(-817.53, -727.82, 23.78),
        showBlip = false,
        blipName = "Triad2",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["pawnshop"] = {
        label = "Pawn Parking",
        takeVehicle = vector3(-1075.25, -266.56, 37.73),
        spawnPoints = {
            vector4(-1081.31, -268.93, 37.67, 113.52),
        },
        putVehicle = vector3(-1075.25, -266.56, 37.73),
        showBlip = false,
        blipName = "Pawn Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["pawnshop2"] = {
        label = "Pawn Parking2",
        takeVehicle = vector3(-130.53, 1005.09, 235.73),
        spawnPoints = {
            vector4(-129.81, 1002.83, 235.35, 199.09),
        },
        putVehicle = vector3(-128.88, 1000.79, 235.73),
        showBlip = false,
        blipName = "Pawn Паркинг2",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["realestate"] = {
        label = "RealEstate Parking",
        takeVehicle = vector3(-103.91, -606.99, 36.07),
        spawnPoints = {
            vector4(-106.07, -613.1, 36.07, 160.89),
        },
        putVehicle = vector3(-103.91, -606.99, 36.07),
        showBlip = false,
        blipName = "RealEstate Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	["pawnshop3"] = {
        label = "House Parking",
        takeVehicle = vector3(-870.72, -52.57, 38.39),
        spawnPoints = {
            vector4(-870.72, -52.57, 38.39, 268.72),
        },
        putVehicle = vector3(-870.72, -52.57, 38.39),
        showBlip = false,
        blipName = "Pawn Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["caears24"] = {
        label = "Caears 24 Parking",
        takeVehicle = vector3(69.84, 12.6, 68.96),
        spawnPoints = {
            vector4(73.21, 10.72, 68.83, 163.5),
        },
        putVehicle = vector3(65.43, 21.19, 69.47),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["caears242"] = {
        label = "Caears2 24 Parking",
        takeVehicle = vector3(-475.31, -818.73, 30.46),
        spawnPoints = {
            vector4(-472.03, -815.47, 30.5, 177.5),
        },
        putVehicle = vector3(-453.6, -817.08, 30.61),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["lagunapi"] = {
        label = "Laguna Parking",
        takeVehicle = vector3(364.37, 297.83, 103.49),
        spawnPoints = {
            vector4(367.49, 297.71, 103.43, 340.5),
        },
        putVehicle = vector3(363.04, 283.51, 103.38),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["airportp"] = {
        label = "Airport Parking",
        takeVehicle = vector3(-796.86, -2024.85, 8.88),
        spawnPoints = {
            vector4(-800.41, -2016.53, 9.32, 48.5),
        },
        putVehicle = vector3(-804.84, -2023.21, 9.16),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["beachp"] = {
        label = "Beach Parking",
        takeVehicle = vector3(-1183.1, -1511.11, 4.36),
        spawnPoints = {
            vector4(-1181.0, -1505.98, 4.37, 214.5),
        },
        putVehicle = vector3(-1176.81, -1498.63, 4.37),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["themotorhotel"] = {
        label = "The Motor Hotel Parking",
        takeVehicle = vector3(1137.77, 2663.54, 37.9),               
        spawnPoints = {
            vector4(1137.69, 2673.61, 37.9, 359.5),
        }, 
        putVehicle = vector3(1137.75, 2652.95, 37.9),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["liqourparking"] = {
        label = "Liqour Parking",
        takeVehicle = vector3(934.95, 3606.59, 32.81),
        spawnPoints = {
            vector4(941.57, 3619.99, 32.5, 141.5),
        }, 
        putVehicle = vector3(939.37, 3612.25, 32.69),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["shoreparking"] = {
        label = "Shore Parking",
        takeVehicle = vector3(1726.21, 3707.16, 34.17),
        spawnPoints = {
            vector4(1730.31, 3711.07, 34.2, 20.5),
        }, 
        putVehicle = vector3(1737.13, 3718.91, 34.04),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["haanparking"] = {
        label = "Bell Farms Parking",
        takeVehicle = vector3(78.34, 6418.74, 31.28),
        spawnPoints = {
            vector4(70.71, 6425.16, 30.92, 68.5), 
        }, 
        putVehicle = vector3(85.3, 6427.52, 31.33),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["dumbogarage"] = {
        label = "Dumbo Private Parking",
        takeVehicle = vector3(157.26, -3240.00, 7.00),
        spawnPoints = {
            vector4(165.32, -3236.10, 5.93, 268.5), 
        }, 
        putVehicle = vector3(165.32, -3230.00, 5.93),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["pillboxgarage"] = {
        label = "Централен Гараж",
        takeVehicle = vector3(219.6218, -810.9822, 30.727),
        spawnPoints = {
            vector4(234.1942, -787.066, 30.193, 159.6), 
        }, 
        putVehicle = vector3(218.0894, -781.370, 30.389),
        showBlip = true,
        blipName = "Паркинг",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    --["hayesdepot"] = {
    --    label = "Hayes Depot",
    --    takeVehicle = vector3(491.0, -1314.69, 29.25),
    --    spawnPoint = vector4(491.0, -1314.69, 29.25, 304.5),
    --    showBlip = true,
    --    blipName = "Hayes Depot",
    --    blipNumber = 68,
    --    type = 'depot',                --public, job, gang, depot
    --    vehicle = 'car'                 --car, air, sea
    --},
    ["impoundlot"] = {
        label = "Impound Lot",
        takeVehicle = vector3(-191.77, -1162.23, 23.67),
        spawnPoints = {
            vector4(-183.91, -1174.64, 23.04, 200.84),
        }, 
        showBlip = true,
        blipName = "Наказателен паркинг",
        blipNumber = 68,
        type = 'depot',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["impoundlot2"] = {
        label = "Impound Lot2",
        takeVehicle = vector3(95.94, 6363.62, 31.38),
        spawnPoints = {
            vector4(94.75, 6374.13, 31.23, 12.89),
        }, 
        showBlip = true,
        blipName = "Наказателен паркинг",
        blipNumber = 68,
        type = 'depot',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["ballas"] = {
        label = "Ballas",
        takeVehicle = vector3(1.86, -1831.35, 24.91),
        spawnPoints = {
            vector4(5.92, -1836.57, 24.83, 310.22),
        }, 
        putVehicle = vector3(1.86, -1831.35, 24.91),
        showBlip = false,
        blipName = "Ballas",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "ballas"
    },
    ["gamorra"] = {
        label = "Gamorra",
        takeVehicle = vector3(-1115.38, 4929.28, 218.23),
        spawnPoints = {
            vector4(-1114.97, 4924.61, 218.06, 238.65),
        }, 
        putVehicle = vector3(-1115.38, 4929.28, 218.23),
        showBlip = false,
        blipName = "Gamorra",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "gamorra"
    },
	["10leva"] = {
        label = "10leva",
        takeVehicle = vector3(303.61, -2013.01, 20.15),
        spawnPoints = {
            vector4(297.25, -2006.07, 20.31, 320.2),
        }, 
        putVehicle = vector3(303.61, -2013.01, 20.15),
        showBlip = false,
        blipName = "10leva",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "10leva"
    },
	["balcanes"] = {
        label = "Balcanes",
        takeVehicle = vector3(-759.41, 359.41, 87.86),
        spawnPoints = {
            vector4(-766.6, 358.47, 87.86, 88.72),
        }, 
        putVehicle = vector3(-759.41, 359.41, 87.86),
        showBlip = false,
        blipName = "balcanes",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "balcanes"
    },
    ["parkinghere"] = {
        label = "Balcanes",
        takeVehicle = vector3(-114.66, 1001.88, 235.76),
        spawnPoints = {
            vector4(-121.24, 998.61, 235.75, 158.47),
        }, 
        putVehicle = vector3(-114.66, 1001.88, 235.76),
        showBlip = false,
        blipName = "Balcanes",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "balcanes"
    },
	["shushlqcite"] = {
        label = "shushlqcite",
        takeVehicle = vector3(2431.92, 4985.33, 45.9),
        spawnPoints = {
            vector4(2424.51, 4978.31, 45.96, 135.32),
        }, 
        putVehicle = vector3(2431.92, 4985.33, 45.9),
        showBlip = false,
        blipName = "shushlqcite",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "shushlqcite"
    },
	["lostmc2"] = {
        label = "LostMc2",
        takeVehicle = vector3(-1804.22, 457.2, 128.28),
        spawnPoints = {
            vector4(-1809.1, 458.13, 128.27, 79.82),
        }, 
        putVehicle = vector3(-1804.22, 457.2, 128.28),
        showBlip = false,
        blipName = "lostmc",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "lostmc"
    },
	["seaside"] = {
        label = "seaside",
        takeVehicle = vector3(3330.16, 5156.15, 18.13),
        spawnPoints = {
            vector4(3315.88, 5150.84, 18.07, 98.85),
        }, 
        putVehicle = vector3(3330.16, 5156.15, 18.13),
        showBlip = false,
        blipName = "seaside",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "seaside"
    },
	["lso"] = {
        label = "LSO",
        takeVehicle = vector3(-1161.53, -1513.14, 4.31),
        spawnPoints = {
            vector4(-1161.53, -1513.14, 4.31, 305.53),
        }, 
        putVehicle = vector3(-1161.53, -1513.14, 4.31),
        showBlip = false,
        blipName = "LSO",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "lso"
    },
    ["vagos"] = {
        label = "Vagos",
        takeVehicle = vector3(330.04, -2029.59, 21.14),
        spawnPoints = {
            vector4(330.04, -2029.59, 21.14, 139.3),
        }, 
        putVehicle = vector3(330.04, -2029.59, 21.14),
        showBlip = false,
        blipName = "Vagos",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "vagos"
    },
    ["families"] = {
        label = "La Familia",
        takeVehicle = vector3(-811.65, 187.49, 72.48),
        spawnPoints = {
            vector4(-818.43, 184.97, 72.28, 107.85),
        }, 
        putVehicle = vector3(-811.65, 187.49, 72.48),
        showBlip = false,
        blipName = "La Familia",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "families"
    },
    ["hillbillies"] = {
        label = "HillBillies",
        takeVehicle = vector3(-1888.87, 2045.41, 140.87),
        spawnPoints = {
            vector4(-1888.87, 2045.41, 140.87, 68.46),
        }, 
        putVehicle = vector3(-1898.55, 2048.81, 140.75),
        showBlip = false,
        blipName = "HillBillies",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "hillbillies"
    },
    ["salvini"] = {
        label = "La Famiglia Di Salvini",
        takeVehicle = vector3(-3197.16, 836.58, 8.93),
        spawnPoints = {
            vector4(-3205.36, 842.64, 8.93, 122.96),
        }, 
        putVehicle = vector3(-3190.86, 820.6, 8.93),
        showBlip = false,
        blipName = "La Famiglia Di Salvini",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "hillbillies"
    },
    ["realestate2"] = {
        label = "Realestate2",
        takeVehicle = vector3(-138.62, -585.31, 211.76),
        spawnPoints = {
            vector4(-144.58, -593.23, 211.78, 231.67),
        }, 
        putVehicle = vector3(-144.37, -593.52, 211.78),
        showBlip = false,
        blipName = "Realestate2",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicle = 'air',              --car, air, sea
        job = "realestate"
    },
    ["akatsuki"] = {
        label = "Akatsuki",
        takeVehicle = vector3(-662.84, 908.12, 229.15),
        spawnPoints = {
            vector4(-665.34, 914.89, 229.87, 245.12),
        }, 
        putVehicle = vector3(-665.78, 909.48, 229.59),
        showBlip = false,
        blipName = "Akatsuki",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "akatsuki"
    },
    ["sg"] = {
        label = "Slaughter Gang",
        takeVehicle = vector3(-754.24, 355.38, 87.85),
        spawnPoints = {
            vector4(-753.68, 363.04, 87.86, 268.6),
        }, 
        putVehicle = vector3(-753.68, 363.04, 87.86),
        showBlip = false,
        blipName = "Slaughter Gang",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "sg"
    },
    ["lostmc"] = {
        label = "Lost MC",
        takeVehicle = vector3(2518.4, 4084.35, 38.57),
        spawnPoints = {
            vector4(2511.22, 4074.04, 38.57, 60.58),
        }, 
        putVehicle = vector3(2525.55, 4098.62, 38.63),
        showBlip = false,
        blipName = "Lost MC",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "lostmc"
    },
    ["mayans"] = {
        label = "Mayans MCC",
        takeVehicle = vector3(3333.3, 5159.61, 18.3),
        spawnPoints = {
            vector4(3333.3, 5159.61, 18.3, 151.29),
        }, 
        putVehicle = vector3(3327.81, 5152.38, 18.31),
        showBlip = false,
        blipName = "Mayans MCC",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "mayans"
    },
    ["triads"] = {
        label = "triads",
        takeVehicle = vector3(-1566.12, -389.71, 41.98),
        spawnPoints = {
            vector4(-1566.12, -389.71, 41.98, 228.68),
        }, 
        putVehicle = vector3(-1566.12, -389.71, 41.98),
        showBlip = false,
        blipName = "triads",
        blipNumber = 357,
        type = 'gang',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "triads"
    },
    ["police"] = {
        label = "Police",
        takeVehicle = vector3(380.27, -1625.78, 29.29),
        spawnPoints = {
            vector4(385.36, -1633.81, 29.29, 318.48),
        }, 
        putVehicle = vector3(380.27, -1625.78, 29.29),
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "police"
    },
    ["police2"] = {
        label = "Police2",
        takeVehicle = vector3(454.6, -1017.4, 28.4),
        spawnPoints = {
            vector4(438.4, -1018.3, 27.7, 90.0),
        }, 
        putVehicle = vector3(454.6, -1017.4, 28.4),
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicle = 'car',              --car, air, sea
        job = "police"
    },
    ["intairport"] = {
        label = "Летище", 
        takeVehicle = vector3(-928.84, -2994.38, 19.85),
        spawnPoints = {
            vector4(-979.2, -2995.51, 13.95, 52.19),
        }, 
        putVehicle = vector3(-1003.38, -3008.87, 13.95),
        showBlip = true,
        blipName = "Летище",
        blipNumber = 360,
        type = 'public',                --public, job, gang, depot
        vehicle = 'air'                 --car, air, sea
    },
    ["higginsheli"] = {
        label = "Higgins Helitours", 
        takeVehicle = vector3(-753.27, -1511.5, 5.01),
        spawnPoints = {
            vector4(-745.34, -1468.67, 5.0, 320.15),
        }, 
        putVehicle = vector3(-724.65, -1444.08, 5.0),
        showBlip = true,
        blipName = "Летище",
        blipNumber = 360,
        type = 'public',                --public, job, gang, depot
        vehicle = 'air'                 --car, air, sea
    },
    ["airsshores"] = {
        label = "Sandy Shores Летище", 
        takeVehicle = vector3(1758.19, 3296.66, 41.14),
        spawnPoints = {
            vector4(1740.98, 3279.08, 41.75, 106.77),
        }, 
        putVehicle = vector3(1740.4, 3283.92, 41.1),
        showBlip = true,
        blipName = "Летище",
        blipNumber = 360,
        type = 'public',                --public, job, gang, depot
        vehicle = 'air'                 --car, air, sea
    },
    ["airdepot"] = {
        label = "Air Depot", 
        takeVehicle = vector3(-1243.29, -3392.3, 13.94),
        spawnPoints = {
            vector4(-1269.67, -3377.74, 13.94, 327.88),
        }, 
        showBlip = true,
        blipName = "Паркинг за самолети",
        blipNumber = 359,
        type = 'depot',                --public, job, gang, depot
        vehicle = 'air'                 --car, air, sea
    },
    ["lsymc"] = {
        label = "LSYMC Boathouse",               
        takeVehicle = vector3(-794.66, -1510.83, 1.59),
        spawnPoints = {
            vector4(-793.58, -1501.4, 0.12, 111.5),
        }, 
        putVehicle = vector3(-793.58, -1501.4, 0.12),
        showBlip = true,
        blipName = "Паркинг за лодки",
        blipNumber = 356,
        type = 'public',                --public, job, gang, depot
        vehicle = 'sea'                 --car, air, sea
    },
    ["chanautos2"] = {
        label = "Chan Autos2",               
        takeVehicle = vector3(-1231.58, -352.08, 36.98),
        spawnPoints = {
            vector4(-1238.66, -348.14, 36.98, 25.93),
        }, 
        putVehicle = vector3(-1231.58, -352.08, 36.98),
        showBlip = false,
        blipName = "Паркинг за коли втора употреба",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
	    ["burgershot"] = {
        label = "Burgershot",               
        takeVehicle = vector3(-1200.79, -880.79, 13.33),
        spawnPoints = {
            vector4(-1203.31, -877.44, 13.24, 305.15),
        }, 
        putVehicle = vector3(-1192.77, -870.42, 13.62),
        showBlip = true,
        blipName = "Паркинг Бургершот",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicle = 'car'                 --car, air, sea
    },
    ["paleto"] = {
        label = "Paleto Boathouse",               
        takeVehicle = vector3(-277.46, 6637.2, 7.48),
        spawnPoints = {
            vector4(-289.2, 6637.96, 1.01, 45.5),
        }, 
        putVehicle = vector3(-289.2, 6637.96, 1.01),
        showBlip = true,
        blipName = "Паркинг за лодки",
        blipNumber = 356,
        type = 'public',                --public, job, gang, depot
        vehicle = 'sea'                 --car, air, sea
    },
    ["millars"] = {
        label = "Millars Boathouse",               
        takeVehicle = vector3(1299.24, 4216.69, 33.9),
        spawnPoints = {
            vector4(1297.82, 4209.61, 30.12, 253.5),
        }, 
        putVehicle = vector3(1297.82, 4209.61, 30.12),
        showBlip = true,
        blipName = "Паркинг за лодки",
        blipNumber = 356,
        type = 'public',                --public, job, gang, depot
        vehicle = 'sea'                 --car, air, sea
    },
    ["seadepot"] = {
        label = "LSYMC Depot",               
        takeVehicle = vector3(-772.98, -1430.76, 1.59),
        spawnPoints = {
            vector4(-729.77, -1355.49, 1.19, 142.5),
        }, 
        putVehicle = vector3(-729.77, -1355.49, 1.19),
        showBlip = true,
        blipName = "Паркинг за лодки",
        blipNumber = 356,
        type = 'depot',                --public, job, gang, depot
        vehicle = 'sea'                 --car, air, sea
    },
}
HouseGarages = {}
