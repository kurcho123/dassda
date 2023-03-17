Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Products = {
    ["normal"] = {
        [1] = {
            name = "tosti",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "twerks_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "snikkel_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "sandwich",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "lighter",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "rolling_paper",
            price = 2,
            amount = 1,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = { -- Change to match the correct number from 0-x
            name = "sushirolls", -- Change to match the correct item
            price = 6, -- Cost in Dollars
            amount = 50, -- Stock
            info = {}, -- Usually left Blank
            type = "item", -- Item/Weapon
            slot = 9, -- Change to match the correct slot number
        },
        [10] = {
            name = "pizzaslice",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "cookie",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [12] = {
            name = "muffin",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "donut",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "cupcake",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "fries",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "icecream",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "gum",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "ramen",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "codeine",
            price = 70,
            amount = 500,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "jolly_ranchers",
            price = 25,
            amount = 500,
            info = {},
            type = "item",
            slot = 20,
        },
        [21] = {
            name = "drink_sprite",
            price = 15,
            amount = 500,
            info = {},
            type = "item",
            slot = 21,
        },
        [22] = {
            name = "ice",
            price = 5,
            amount = 500,
            info = {},
            type = "item",
            slot = 22,
        },
        -- Drinks
        [23] = {
            name = "icedtea",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 23,
        },
        [24] = {
            name = "sprite",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 24,
        },
        [25] = {
            name = "pepsi",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 25,
        },
        [26] = {
            name = "lemonade",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 26,
        },
        [27] = {
            name = "mtndew",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 27,
        }, 
        [28] = {
            name = "milk",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 28,
        }, 
        [29] = {
            name = "fanta",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 29,
        }, 
        [30] = {
            name = "drpepper",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 30,
        }, 
        [31] = {
            name = "pinklemonade",
            price = 4,
            amount = 50,
            info = {},
            type = "item",
            slot = 31,
        },
        [32] = {
            name = "fruitpunch",
            price = 3,
            amount = 50,
            info = {},
            type = "item",
            slot = 32,
        },
    },
    ["petshop"] = {
        [1] = {
            name = 'keepcompanionwesty',
            price = 130000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'keepcompanionshepherd',
            price = 200000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'keepcompanionretriever',
            price = 240000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'keepcompanionrottweiler',
            price = 275000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 4
        },
        [5] = {
            name = 'keepcompanionpug',
            price = 190000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 5
        },
        [6] = {
            name = 'keepcompanionpoodle',
            price = 300000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 6
        },

        [7] = {
            name = 'keepcompanionmtlion2',
            price = 600000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 7
        },
        [8] = {
            name = 'keepcompanioncat',
            price = 100000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 8
        },
        [9] = {
            name = 'keepcompanionmtlion',
            price = 600000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 9
        },
        [10] = {
            name = 'keepcompanionhusky',
            price = 260000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 10
        },
        [11] = {
            name = 'petfood',
            price = 350,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 11
        },
        [12] = {
            name = 'collarpet',
            price = 50000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 12
        },
        [13] = {
            name = 'firstaidforpet',
            price = 10000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 13
        },
        [14] = {
            name = 'petnametag',
            price = 5000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 14
        },
        [15] = {
            name = 'petwaterbottleportable',
            price = 5000,
            amount = 500,
            info = {},
            type = 'item',
            slot = 15
        },
        [16] = {
            name = 'petgroomingkit',
            price = 7000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 16
        },
        [17] = {
            name = 'keepcompanionrabbit',
            price = 130000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 17
        },
        [18] = {
            name = 'keepcompanionhen',
            price = 120000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 18
        },
        [19] = {
            name = 'keepcompanioncoyote',
            price = 150000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 19
        },
    },
    ["hardware"] = {
        [1] = {
            name = "weapon_wrench",
            price = 12500,
            amount = 5,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_hammer",
            price = 12500,
            amount = 5,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "phone",
            price = 850,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "radio",
            price = 650,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "screwdriverset",
            price = 300,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "binoculars",
            price = 750,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "firework1",
            price = 550,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "firework2",
            price = 550,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "firework3",
            price = 550,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "firework4",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "fitbit",
            price = 400,
            amount = 150,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "cleaningkit",
            price = 350,
            amount = 150,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "lockpick",
            price = 300,
            amount = 120,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "fishingrod",
            price = 350,
            amount = 150,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "fishingbait",
            price = 10,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "cagoule",
            price = 200,
            amount = 150,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "domestos",
            price = 100,
            amount = 1000,
            info = {},
            type = "item",
            slot = 17,
        },
	    [18] = {
            name = "hifi",
            price = 650,
            amount = 1000,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "razreditel",
            price = 100,
            amount = 1000,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "kq_outfitbag",
            price = 25000,
            amount = 30,
            info = {},
            type = "item",
            slot = 20,
        },
    },
    ["coffeeshop"] = {
        [1] = {
            name = "nitrogen",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "oxygen",
            price = 35,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "carbon",
            price = 50,
            amount = 1000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "hydrogen",
            price = 30,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "jerry_can",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["bean"] = {
        [1] = {
            name = "ramen",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "bean" }
        },
        [2] = {
            name = "fries",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "bean" }
        },
        [3] = {
            name = "sandwich",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "bean" }
        },
        [4] = {
            name = "pizzaslice",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "bean" }
        },
        [5] = {
            name = "sushirolls",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 5,
            requiredJob = { "bean" }
        },
        [6] = {
            name = "kurkakola",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 6,
            requiredJob = { "bean" }
        },
        [7] = {
            name = "mtndew",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 7,
            requiredJob = { "bean" }
        },
        [8] = {
            name = "wine",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 8,
            requiredJob = { "bean" }
        },
        [9] = {
            name = "beer",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 9,
            requiredJob = { "bean" }
        },
        [10] = {
            name = "coffee",
            price = 1,
            amount = 500,
            info = {},
            type = "item",
            slot = 10,
            requiredJob = { "bean" }
        },
    },
    ["cockatoos"] = {
        [1] = {
            name = "ramen",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "cockatoos" }
        },
        [2] = {
            name = "fries",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "cockatoos" }
        },
        [3] = {
            name = "sandwich",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "cockatoos" }
        },
        [4] = {
            name = "pizzaslice",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "cockatoos" }
        },
        [5] = {
            name = "sushirolls",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 5,
            requiredJob = { "cockatoos" }
        },
        [6] = {
            name = "kurkakola",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 6,
            requiredJob = { "cockatoos" }
        },
        [7] = {
            name = "mtndew",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 7,
            requiredJob = { "cockatoos" }
        },
        [8] = {
            name = "wine",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 8,
            requiredJob = { "cockatoos" }
        },
        [9] = {
            name = "beer",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 9,
            requiredJob = { "cockatoos" }
        },
        [10] = {
            name = "coffee",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 10,
            requiredJob = { "cockatoos" }
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 600,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 450,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },    
        [3] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        -- [4] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },   
    ["mustapha"] = {
        [1] = {
            name = "parachute",
            price = 600,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 450,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },    
        [3] = {
            name = "diving_gear",
            price = 1500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
	    [4] = {
            name = "armor",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
    },    
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 9500,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_bat",
            price = 16500,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hatchet",
            price = 12500,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
	    [4] = {
            name = "parachute",
            price = 500,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "binoculars",
            price = 300,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_pistol",
            price = 60000,
            amount = 2,
            info = {},
            type = "item",
            slot = 6,
            requiresLicense = true
        },
        [7] = {
            name = "weapon_snspistol",
            price = 55000,
            amount = 2,
            info = {},
            type = "item",
            slot = 7,
            requiresLicense = true
        },
        [8] = {
            name = "pistol_ammo",
            price = 500,
            amount = 250,
            info = {},
            type = "item",
            slot = 8,
            requiresLicense = true
        },
    },
    ["coffeeplace"] = {
        [1] = {
            name = "coffee",
            price = 5,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "lighter",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["weapondealer"] = {
        [1] = {
            name = "weapon_pistol50",
            price = 60000,
            amount = 20,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "salvini646521" }
        },
        [2] = {
            name = "weapon_compactrifle",
            price = 125000,
            amount = 20,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "salvini646521" }
        },
        [3] = {
            name = "weapon_assaultrifle_mk2",
            price = 225000,
            amount = 20,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "salvini646521" }
        },
        [4] = {
            name = "weapon_carbinerifle_mk2",
            price = 275000,
            amount = 20,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "salvini646521" }
        },
        [5] = {
            name = "weapon_gusenberg",
            price = 150000,
            amount = 20,
            info = {},
            type = "item",
            slot = 5,
            requiredJob = { "salvini646521" }
        },
        [6] = {
            name = "weapon_heavysniper",
            price = 1200000,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
            requiredJob = { "salvini646521" }
        },
        [7] = {
            name = "weapon_dbshotgun",
            price = 75000,
            amount = 20,
            info = {},
            type = "item",
            slot = 7,
            requiredJob = { "salvini646521" }
        },
        [8] = {
            name = "weapon_pumpshotgun",
            price = 125000,
            amount = 20,
            info = {},
            type = "item",
            slot = 8,
            requiredJob = { "salvini646521" }
        },
        [9] = {
            name = "pistol_ammo",
            price = 50,
            amount = 8000,
            info = {},
            type = "item",
            slot = 9,
            requiredJob = { "salvini646521" }
        },
        [10] = {
            name = "shotgun_ammo",
            price = 100,
            amount = 8000,
            info = {},
            type = "item",
            slot = 10,
            requiredJob = { "salvini646521" }
        },
        [11] = {
            name = "rifle_ammo",
            price = 150,
            amount = 8000,
            info = {},
            type = "item",
            slot = 11,
            requiredJob = { "salvini646521" }
        },
        [12] = {
            name = "smg_ammo",
            price = 100,
            amount = 8000,
            info = {},
            type = "item",
            slot = 12,
            requiredJob = { "salvini646521" }
        },
        [13] = {
            name = "snp_ammo",
            price = 2000,
            amount = 8000,
            info = {},
            type = "item",
            slot = 13,
            requiredJob = { "salvini646521" }
        },
        [14] = {
            name = "weapon_battleaxe",
            price = 15000,
            amount = 30,
            info = {},
            type = "item",
            slot = 14,
            requiredJob = { "salvini646521" }
        },
        [15] = {
            name = "weapon_switchblade",
            price = 15000,
            amount = 30,
            info = {},
            type = "item",
            slot = 15,
            requiredJob = { "salvini646521" }
        },
        [16] = {
            name = "weapon_machete",
            price = 12000,
            amount = 30,
            info = {},
            type = "item",
            slot = 16,
            requiredJob = { "salvini646521" }
        },
        [17] = {
            name = "pistol_suppressor",
            price = 10000,
            amount = 2,
            info = {},
            type = "item",
            slot = 17,
            requiredJob = { "salvini646521" }
        },
        [18] = {
            name = "rifle_suppressor",
            price = 20000,
            amount = 2,
            info = {},
            type = "item",
            slot = 18,
            requiredJob = { "salvini646521" }
        },
        [19] = {
            name = "rifle_grip",
            price = 30000,
            amount = 100,
            info = {},
            type = "item",
            slot = 19,
            requiredJob = { "salvini646521" }
        },
        [20] = {
            name = "weapon_smg_mk2",
            price = 140000,
            amount = 30,
            info = {},
            type = "item",
            slot = 20,
            requiredJob = { "salvini646521" }
        },
        [21] = {
            name = "weapon_combatpdw",
            price = 150000,
            amount = 30,
            info = {},
            type = "item",
            slot = 21,
            requiredJob = { "salvini646521" }
        },
        [22] = {
            name = "combatpdw_extendedclip",
            price = 15000,
            amount = 500,
            info = {},
            type = "item",
            slot = 22,
            requiredJob = { "salvini646521" }
        },
        [23] = {
            name = "combatpdw_drum",
            price = 20000,
            amount = 500,
            info = {},
            type = "item",
            slot = 23,
            requiredJob = { "salvini646521" }
        },
        [24] = {
            name = "combatpdw_grip",
            price = 25000,
            amount = 500,
            info = {},
            type = "item",
            slot = 24,
            requiredJob = { "salvini646521" }
        },
        [25] = {
            name = "combatpdw_scope",
            price = 40000,
            amount = 500,
            info = {},
            type = "item",
            slot = 25,
            requiredJob = { "salvini646521" }
        },
        [26] = {
            name = "weapon_microsmg",
            price = 140000,
            amount = 500,
            info = {},
            type = "item",
            slot = 26,
            requiredJob = { "salvini646521" }
        },
        [27] = {
            name = "smg_suppressor",
            price = 20000,
            amount = 500,
            info = {},
            type = "item",
            slot = 27,
            requiredJob = { "salvini646521" }
        },
        [28] = {
            name = "weapon_assaultrifle",
            price = 225000,
            amount = 500,
            info = {},
            type = "item",
            slot = 28,
            requiredJob = { "salvini646521" }
        },
        [29] = {
            name = "weapon_carbinerifle",
            price = 275000,
            amount = 500,
            info = {},
            type = "item",
            slot = 29,
            requiredJob = { "salvini646521" }
        },
        [30] = {
            name = "weapon_machinepistol",
            price = 180000,
            amount = 500,
            info = {},
            type = "item",
            slot = 30,
            requiredJob = { "salvini646521" }
        },
    },
    ["casino"] = {
        [1] = {
            name = 'casinochips',
            price = 500,
            amount = 999,
            info = {},
            type = 'item',
            slot = 1,
        },
    },
    ["black"] = {
        [1] = {
            name = 'thermite',
            price = 5000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 1,
        },		
		[2] = {
            name = 'electronickit',
            price = 3500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
        },		
		[3] = {
            name = 'gatecrack',
            price = 5000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 3,
        },		
		[4] = {
            name = 'trojan_usb',
            price = 2000,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        },
    },
    ["bir"] = {
        [1] = {
            name = "weapon_compactrifle",
            price = 150000,
            amount = 2,
            info = {},
            type = "item",
            slot = 1,
        },		
		[2] = {
            name = "rifle_ammo",
            price = 1300,
            amount = 2,
            info = {},
            type = "item",
            slot = 2,
        },
		[3] = {
            name = "handcuffs",
            price = 3000,
            amount = 1,
            info = {},
            type = "item",
            slot = 3,
        },
	},
    ["cyber"] = {
        [1] = {
            name = "beer",
            price = 10,
            amount = 3000,
            info = {},
            type = "item",
            slot = 1,
        },
		[2] = {
            name = "whiskey",
            price = 30,
            amount = 3000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 5,
            amount = 3000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "sandwich",
            price = 8,
            amount = 3000,
            info = {},
            type = "item",
            slot = 4,
        },
	},
    ["lostmc"] = {
        [1] = {
            name = "beer",
            price = 10,
            amount = 3000,
            info = {},
            type = "item",
            slot = 1,
        },
		[2] = {
            name = "whiskey",
            price = 30,
            amount = 3000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 5,
            amount = 3000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "sandwich",
            price = 8,
            amount = 3000,
            info = {},
            type = "item",
            slot = 4,
        },
	},
    ["weewee"] = {
        [1] = {
            name = "nitrous",
            price = 3000,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "mechanic", "police" }
        },
		
		[2] = {
            name = "tunerlaptop",
            price = 27500,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "mechanic", "police" }
        },
        [3] = {
            name = "screwdriverset",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
        [4] = {
            name = "lockpick",
            price = 300,
            amount = 20,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "mechanic", "police" }
        },
        [5] = {
            name = "repairkit",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
            requiredJob = { "mechanic", "police" }
        },
	},
    ["tuner"] = {
        [1] = {
            name = "screwdriverset",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "tuner", "police" }
        },
        [2] = {
            name = "lockpick",
            price = 300,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "tuner", "police" }
        },
        [3] = {
            name = "repairkit",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "tuner", "police" }
        },
	},
}

Config.Locations = {
    -- 24/7 Locations
    ["247supermarket"] = {
        ["label"] = "Магазин 24/7",
        ["coords"] = {
            [1] = vector4(24.47, -1346.62, 29.5, 271.66),       -- 24/7 1
            [2] = vector4(-3039.54, 584.38, 7.91, 17.27),       -- 24/7 2
            [3] = vector4(-3242.97, 1000.01, 12.83, 357.57),    -- 24/7 3
            [4] = vector4(1728.07, 6415.63, 35.04, 242.95),     -- 24/7 4
            [5] = vector4(1959.82, 3740.48, 32.34, 301.57),     -- 24/7 5
            [6] = vector4(549.13, 2670.85, 42.16, 99.39),       -- 24/7 6
            [7] = vector4(2677.47, 3279.76, 55.24, 335.08),     -- 24/7 7
            [8] = vector4(2556.66, 380.84, 108.62, 356.67),     -- 24/7 8
			[9] = vector4(812.88, -782.56, 26.17, 269.29),     -- 24/7 8
			[10] = vector4(4479.19, -4470.08, 4.23, 290.47),     -- 24/7 8
            [11] = vector4(372.66, 326.98, 103.57, 253.73),      -- 24/7 9
        },
        ["ped"] = {
            ["model"] = 'mp_m_shopkeep_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52
    },

    ["petshop"] = {
        ["label"] = "Pet Shop",
        ["coords"] = {
            [1] = vector4(561.18, 2741.51, 42.87, 199.08)
        },
        ["ped"] = {
            ["model"] = 'S_M_M_StrVend_01'
        },
        ["radius"] = 2.5,
        ["products"] = Config.Products["petshop"],
        ["showblip"] = false,
        ["blipsprite"] = 52
    },

    ["cyber"] = {
        ["label"] = "Vanilla",
        ["coords"] = {
            [1] = vector4(126.7, -1279.95, 29.26, 25.39),
            [2] = vector4(2512.37, 4098.21, 38.58, 244.04),
            [3] = vector4(2519.33, 4108.81, 42.8, 335.25),
            [4] = vector4(1983.79, 3051.05, 49.44, 237.3),
            [5] = vector4(-2647.64, 1695.52, 138.64, 115.94),
            [6] = vector4(1984.36, 3054.44, 46.22, 235.69),
            [7] = vector4(-1991.17, -513.04, 25.91, 319.89)
        },
        ["ped"] = {
            ["model"] = 'u_f_y_spyactress'
        },
        ["radius"] = 2.5,
        ["products"] = Config.Products["cyber"],
        ["showblip"] = false,
        ["blipsprite"] = 52
    },

    ["cockatoos"] = {
        ["label"] = "Bahama Mama",
        ["coords"] = {
            [1] = vector4(-1392.15, -604.75, 30.32, 107.24)
        },
        ["ped"] = {
            ["model"] = 'u_f_y_dancerave_01'
        },
        ["radius"] = 2.5,
        ["products"] = Config.Products["cockatoos"],
        ["showblip"] = false,
        ["blipsprite"] = 52
    },

    ["bean"] = {
        ["label"] = "Bean Machine Coffe",
        ["coords"] = {
            [1] = vector4(-635.01, 235.12, 81.88, 271.83)
        },
        ["ped"] = {
            ["model"] = 'u_f_y_dancerave_01'
        },
        ["radius"] = 2.5,
        ["products"] = Config.Products["bean"],
        ["showblip"] = false,
        ["blipsprite"] = 52
    },
    
    
    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "Магазин LTD",
        ["coords"] = {
            [1] = vector4(-47.02, -1758.23, 29.42, 45.05),      -- LTD 1
            [2] = vector4(-706.06, -913.97, 19.22, 88.04),      -- LTD 2
            [3] = vector4(-1820.02, 794.03, 138.09, 135.45),    -- LTD 3
            [4] = vector4(1164.71, -322.94, 69.21, 101.72),     -- LTD 4
            [5] = vector4(1697.87, 4922.96, 42.06, 324.71)      -- LTD 5
        },
        ["ped"] = {
            ["model"] = 'mp_m_shopkeep_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52
    },

    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Магазин Rob's Liqour",
        ["coords"] = {
            [1] = vector4(-1221.58, -908.15, 12.33, 35.49),     -- ROB 1
            [2] = vector4(-1486.59, -377.68, 40.16, 139.51),    -- ROB 2
            [3] = vector4(-2966.39, 391.42, 15.04, 87.48),      -- ROB 3
            [4] = vector4(1165.17, 2710.88, 38.16, 179.43),     -- ROB 4
            [5] = vector4(1134.2, -982.91, 46.42, 277.24)       -- ROB 5
        },
        ["ped"] = {
            ["model"] = 'mp_m_shopkeep_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52
    },

    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Железария",
        ["coords"] = {
            [1] = vector4(45.68, -1749.04, 29.61, 53.13),       -- HDWR 1
            [2] = vector4(2747.71, 3472.85, 55.67, 255.08),     -- HDWR 2
            [3] = vector4(-421.83, 6136.13, 31.88, 228.2)       -- HDWR 3
        },
        ["ped"] = {
            ["model"] = 'mp_m_waremech_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402
    },

    ["coffeeshop"] = {
        ["label"] = "Наркомани",
        ["coords"] = {
            [1] = vector4(1089.11, 6511.78, 21.08, 185.44)       -- HDWR 1
        },
        ["ped"] = {
            ["model"] = 'a_f_y_tourist_01'
        },
        ["radius"] = 2.3,
        ["products"] = Config.Products["coffeeshop"],
        ["showblip"] = false,
        ["blipsprite"] = 402
    },

    -- Ammunation Locations
    ["ammunation"] = {
        ["label"] = "Магазин за оръжия",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector4(-658.59, -939.0, 21.83, 86.46),      -- AMMU 1
            [2] = vector4(813.73, -2155.41, 29.62, 357.35),        -- AMMU 2
            [3] = vector4(1697.76, 3757.79, 34.71, 135.75),      -- AMMU 3
            [4] = vector4(-326.16, 6081.62, 31.45, 135.24),      -- AMMU 4
            [5] = vector4(247.08, -51.38, 69.94, 339.45),         -- AMMU 5
            [6] = vector4(18.24, -1107.95, 29.8, 161.52),         -- AMMU 6
            [7] = vector4(2564.73, 298.43, 108.73, 270.68),      -- AMMU 7
            [8] = vector4(-1112.58, 2697.64, 18.55, 129.89),     -- AMMU 8
            [9] = vector4(841.16, -1028.91, 28.19, 266.14),        -- AMMU 9
            [10] = vector4(-1310.68, -394.3, 36.7, 341.02)       -- AMMU 10
        },
        ["ped"] = {
            ["model"] = 's_m_y_ammucity_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110
    },

    ["weapondealer"] = {
        ["label"] = "WeaponDealer",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector4(5012.4, -5748.64, 28.95, 150.24)    -- AMMU 1
        },
        ["ped"] = {
            ["model"] = 's_m_y_swat_01'
        },
        ["radius"] = 1.5,
        ["products"] = Config.Products["weapondealer"],
        ["showblip"] = false,
        ["blipsprite"] = 110
    },

    -- Casino Locations

    -- Weedshop Locations

    -- Sea Word Locations
    ["seaword"] = {
        ["label"] = "Магазин на плажа",
        ["coords"] = {
            [1] = vector4(-1687.03, -1072.18, 13.15, 52.93)
        },
        ["ped"] = {
            ["model"] = 'a_m_y_beach_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["gearshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52
    },

    -- Leisure Shop Locations
    ["leisureshop"] = {
        ["label"] = "Магазин Leisure",
        ["coords"] = {
            [1] = vector4(-1505.91, 1511.95, 115.29, 257.13)
        },
        ["ped"] = {
            ["model"] = 'a_m_y_beach_01'
        },
        ["radius"] = 2.2,
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52
    },
}
