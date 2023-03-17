--[[
    ['Innocence'] = {
    settings = {
        label = 'Bennys Motorworks', -- Text label for anything that wants it
        welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
        enabled = true, -- If the location can be used at all
    },
    blip = {
        label = 'Bennys Motorworks',
        coords = vector3(-205.6992, -1312.7377, 31.1588),
        sprite = 72,
        scale = 0.65,
        color = 0,
        display = 4,
        enabled = true,
    },
    categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
        repair = true,
        mods = true,
        armor = true,
        respray = true,
        liveries = true,
        wheels = true,
        tint = true,
        plate = true,
        extras = true,
        neons = true,
        xenons = true,
        horn = true,
        turbo = true,
    },
    drawtextui = { -- background1 and background2 are also valid options for the background gradiant
        text = "Bennys Motorworks",
    },
    restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
        job = "any", -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
        gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
        allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
        deniedClasses = {}, -- Array of denied classes.
    },
    zones = {
        { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.4, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
    }
},
Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]

Config = Config or {}

Config.Locations = {
    ['Innocence'] = {
        settings = {
            label = 'Groove Customs',
            welcomeLabel = "Добре дошли в Groove Customs!",
            enabled = true,
        },
        blip = {
            label = 'Groove Customs',
            coords = vector3(876.27, -2113.45, 30.46),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            repair = true,
            respray = true,
            armor = true,
            turbo = true,
            mods = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = {
        job = { 'mechanic' },
        },
        zones = {
            { coords = vector3(875.81, -2125.17, 29.56), length = 3.6, width = 3.5, heading = 355.00, minZ = 27.66, maxZ = 31.66 },
            { coords = vector3(887.13, -2126.21, 29.56), length = 3.6, width = 3.5, heading = 355.00, minZ = 27.66, maxZ = 31.66 },
			{ coords = vector3(897.89, -2126.89, 29.56), length = 3.6, width = 3.5, heading = 355.00, minZ = 27.66, maxZ = 31.66 },
			{ coords = vector3(909.21, -2128.08, 29.56), length = 3.6, width = 3.5, heading = 355.00, minZ = 27.66, maxZ = 31.66 },
        }
    },
	['Innocence2'] = {
        settings = {
            label = 'Tokyo Customs',
            welcomeLabel = "Добре дошли в Tokyo Customs!",
            enabled = true,
        },
        blip = {
            label = 'Tokyo Customs',
            coords = vector3(1174.34, 2638.98, 37.76),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            repair = true,
            respray = false,
            armor = true,
            turbo = true,
            mods = false,
            liveries = true,
            wheels = false,
            tint = false,
            plate = false,
            extras = false,
            neons = true,
            xenons = true,
            horn = true,
        },
        drawtextui = {
            text = "Tokyo Customs"
        },
        restrictions = {
        job = { 'mechanic2' },
        },
        zones = {
            { coords = vector3(1175.02, 2640.03, 37.79), length = 3, width = 4, heading = 359.00, minZ = 34.39, maxZ = 38.39 },
        }
    },
}