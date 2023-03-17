Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Targets = {}

Config.AttachedVehicle = nil

Config.AuthorizedIds = {
   -- "insertcitizenidhere",
}

Config.MaxStatusValues = {
    ["engine"] = 1000.0,
    ["body"] = 1000.0,
    ["radiator"] = 100,
    ["axle"] = 100,
    ["brakes"] = 100,
    ["clutch"] = 100,
    ["fuel"] = 100,
}

Config.ValuesLabels = {
    ["engine"] = "Motor",
    ["body"] = "Body",
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Ttank",
}

Config.RepairCost = {
    ["body"] = "plastic",
    ["radiator"] = "plastic",
    ["axle"] = "steel",
    ["brakes"] = "iron",
    ["clutch"] = "aluminum",
    ["fuel"] = "plastic",
}

Config.RepairCostAmount = {
    ["engine"] = {
        item = "metalscrap",
        costs = 10,
    },
    ["body"] = {
        item = "plastic",
        costs = 10,
    },
    ["radiator"] = {
        item = "steel",
        costs = 10,
    },
    ["axle"] = {
        item = "aluminum",
        costs = 10,
    },
    ["brakes"] = {
        item = "copper",
        costs = 10,
    },
    ["clutch"] = {
        item = "copper",
        costs = 10,
    },
    ["fuel"] = {
        item = "plastic",
        costs = 10,
    },
}

Config.Businesses = {
    "Groove Customs",
}

Config.Plates = {
    [1] = {   
        coords = vector4(888.13, -2101.91, 29.47, 171.18),
        boxData = {
            heading = 70,
            length = 5,
            width = 2.5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
    [2] = {
        coords = vector4(896.05, -2102.4, 29.47, 166.41),
        boxData = {
            heading = 68.11,
            length = 5,
            width = 2.5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
}


Config.Locations = {
    ["exit"] = vector3(865.98, -2119.47, 30.48),
    ["duty"] = vector3(876.33, -2100.45, 30.48),
    ["stash"] = vector3(871.59, -2122.34, 30.46),
    ["vehicle"] = vector4(864.44, -2122.86, 30.53, 356.01),
}

Config.Vehicles = {
    ["flatbed"] = "Flatbed",
    ["f450c"] = "BigTowTruck",
    ["f450s"] = "SmallTowTruck",
    ["slamvan"] = "Slamvan",
}

Config.MinimalMetersForDamage = {
    [1] = {
        min = 8000,
        max = 12000,
        multiplier = {
            min = 1,
            max = 8,
        }
    },
    [2] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 8,
            max = 16,
        }
    },
    [3] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 16,
            max = 24,
        }
    },
}

Config.Damages = {
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Tank",
}
