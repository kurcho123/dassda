Config = {}

Config.PawnLocation = vector3(-1047.9, -237.58, 38.26)
Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = true -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 10 -- Opening Time
Config.TimeClosed = 11 -- Closing Time
Config.SendMeltingEmail = true

Config.PawnItems = {
    [1] = {
        item = "goldchain",
        price = math.random(2,30)
    },
    [2] = {
        item = "diamond_ring",
        price = math.random(2,30)
    },
    [3] = {
        item = "rolex",
        price = math.random(2,30)
    },
    [4] = {
        item = "10kgoldchain",
        price = math.random(2,30)
    },
    [5] = {
        item = "tablet",
        price = math.random(20,30)
    },
    [6] = {
        item = "iphone",
        price = math.random(20,30)
    },
    [7] = {
        item = "samsungphone",
        price = math.random(20,30)
    },
    [8] = {
        item = "laptop",
        price = math.random(20,30)
    },
    [9] = {
        item = "cryptostick",
        price = math.random(8,10)
    }
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = "goldchain",
        rewards = {
            [1] = {
                item = "goldbar",
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = "diamond_ring",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = "rolex",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            },
            [3] = {
                item = "electronickit",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = "10kgoldchain",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 5
            },
            [2] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
}