Config = Config or {}

Config.UseBlips = true                                              -- True / false option for toggling farm blips
Config.Timeout = 75 * (60 * 1000)                                   -- 20 minutes

--Blips Config
MiningLocation = {
    targetZone = vector3(-600.57, 2092.49, 130.33),                 -- qb-target vector
    targetHeading = 273.47,                                         -- qb-target box zone
    coords = vector4(-600.57, 2092.49, 130.33, 339.52),             -- Move Location (Ped and blip)
    SetBlipSprite = 414,                                            -- Blip Icon (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                             -- Blip Behavior (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.85,                                            -- Blip Size
    SetBlipColour = 21,                                             -- Blip Color
    BlipLabel = "Пустиняшка Мина",                                       -- Blip Label
    minZ = 129.42,                                                  -- Max Z
    maxZ = 132.42,                                                  -- Max Z
}
WashLocation = {
    targetZone = vector3(77.17, 3150.86, 28.79),
    targetHeading = 80.46,
    coords = vector4(77.17, 3150.86, 28.79, 80.46),
    SetBlipSprite = 162,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 26,
    BlipLabel = "Оти не си измиеш каманитье",
    minZ = 27,
    maxZ = 31,
}
SmeltLocation = {
    coords = vector4(1090.11, -1991.51, 32.27, 56.22),
    SetBlipSprite = 162,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 36,
    BlipLabel = "Претапянье",
}
SellLocation = {
    targetZone = vector3(579.11, -2804.96, 5.06),
    targetHeading = 242.63,
    coords = vector4(579.11, -2804.96, 5.06, 242.63),
    SetBlipSprite = 431,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 28,
    BlipLabel = "Пустиняко кой изкупува",
    minZ = 3,
    maxZ = 7,
}
--Job Config
MiningJob = {
    Miner = "s_m_y_construct_02",                                   -- Ped model  https://wiki.rage.mp/index.php?title=Peds
    MinerHash = 0xC5FEFADE,                                         -- Hash numbers for ped model

    Washer = "ig_cletus",
    WasherHash = 0xE6631195,

    MiningTimer = 45 * 1000,                                        -- 20 second timer
    WashingTimer = 45 * 1000,                                       -- 15 second timer
    IronTimer = 45 * 1000,                                          -- 25 seconds
    CopperTimer = 45 * 1000,                                        -- 30 seconds
    GoldTimer = 75 * 1000,                                          -- 35 seconds

    PickAxePrice = 1575,                                              -- PickAxe Price ($75)
    WashPanPrice = 500,                                               -- Washing Pan Price ($5)

    StoneMin = 3,                                                   -- Min amount from mining
    StoneMax = 6,                                                   -- Max amount from mining
    
    -- Washing Min And Max
    IronFragMin = 6,
    IronFragMax = 6,
    GoldNugMin = 6,
    GoldNugMax = 6,
    CopperFragMin = 6,
    CopperFragMax = 6,

    -- Smelting Min and Max
    SmeltIronMin = 6,
    SmeltIronMax = 6,
    SmeltCopperMin = 6,
    SmeltCooperMax = 6,
    SmeltGoldMin = 6,
    SmeltGoldMax = 6,

    -- Bars Received
    IronBarsMin = 1,
    IronBarsMax = 2,
    CopperBarsMin = 1,
    CopperBarsMax = 2,
    GoldBarsMin = 1,
    GoldBarsMax = 2,
}


vector4(77.17, 3150.86, 29.79, 80.46)
Config.MiningLocation = {
    [1] = {
        ["coords"] = vector3(-590.57, 2073.85, 131.3),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [2] = {
        ["coords"] = vector3(-591.0, 2063.64, 130.08),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [3] = {
        ["coords"] = vector3(-587.13, 2054.63, 130.33),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [4] = {
        ["coords"] = vector3(-587.07, 2043.96, 129.63),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [5] = {
        ["coords"] = vector3(-577.74, 2032.72, 128.58),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [6] = {
        ["coords"] = vector3(-573.13, 2023.77, 127.85),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [7] = {
        ["coords"] = vector3(-565.44, 2015.6, 127.49),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [8] = {
        ["coords"] = vector3(-554.67, 1999.82, 127.26),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [9] = {
        ["coords"] = vector3(-549.8, 1996.89, 127.06),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [10] = {
        ["coords"] = vector3(-544.97, 1988.73, 127.0),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [11] = {
        ["coords"] = vector3(-532.22, 1979.47, 126.99),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [12] = {
        ["coords"] = vector3(-517.84, 1980.41, 126.47),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [13] = {
        ["coords"] = vector3(-541.67, 1974.28, 126.98),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [14] = {
        ["coords"] = vector3(-542.82, 1961.31, 126.82),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
    [15] = {
        ["coords"] = vector3(-538.38, 1951.48, 126.19),
        ["isMined"] = false,
        ["isOccupied"] = false,
    },
}

Config.Sell = {
    ["mining_washedstone"] = {
        ["price"] = math.random(3, 6)                             -- Seller Price
    },
    ["mining_stone"] = {
        ["price"] = 2
    },
    ["mining_ironfragment"] = {
        ["price"] = math.random(25, 35)
    },
    ["mining_ironbar"] = {
        ["price"] = math.random(45, 60)
    },
    ["mining_goldnugget"] = {
        ["price"] = math.random(35, 50)
    },
    ["mining_goldbar"] = {
        ["price"] = math.random(60, 75)
    },
    ["mining_copperfragment"] = {
        ["price"] = math.random(15, 25)
    },
    ["mining_copperbar"] = {
        ["price"] = math.random(25, 35)
    },
}

--- Config Alerts
Config.Text = {
    ['itemamount'] = 'Немаш достатъчно материали!',
    
    ['MenuHeading'] = 'Шефчето',
    ['MenuPickAxe'] = 'Купи Кирка',
    ['PickAxeText'] = 'Кирката се ползва за копанье $'..MiningJob.PickAxePrice,

    ["MenuTarget"] = 'Говори с Шефчето',
    ["goback"] = '<- Върни се!',

    ['WashHeading'] = 'Продавач на сито',
    ['MenuWashPan'] = 'Купи сито',
    ['PanText'] = 'Ситото се ползва да измиеш каманитье $' ..MiningJob.WashPanPrice,
    ['Menu_pTarget'] = 'Говори с продавача на сито',

    ['SmethHeading'] = 'Възможности за претапянье',
    ['Semlt_Iron'] = 'Претопи Железни частици',
    ['smelt_IText'] = 'Претопи Железни частици в Железни кюлчета',
    ['Semlt_Copper'] = 'Претопи Медни частици',
    ['smelt_CText'] = 'Претопи Медни частици в Медни кюлчета',
    ['Smelt_Gold'] = 'Претопи Златни частици',
    ['smelt_GText'] = 'Претопи Златни частици в Златни кюлчета',

    ['Pickaxe_Bought'] = 'Купи си кирка за $' ..MiningJob.PickAxePrice.. ' ... Пожелаваме ти късмет!',
    ['Pickaxe_Check'] = 'Вече имаш кирка , оди копай',
    ['MiningAlert'] = 'Я видех нещо искрящо',
    ['StartMining'] = '[E] Започни копанье',

    ['error_mining'] = 'Немаш кирка оди си купи!',
    ['Pan_Bought'] = 'Купи си сито за $' ..MiningJob.WashPanPrice,
    ['Pan_check'] = 'Вече имаш сито',
    ['error_pan'] = 'Немаш сито за да измиеш каманитье',

    ['Mining_ProgressBar'] = 'Копаш за каманитье',

    ['Washing_Target'] = 'Измий каманитье',

    ['error_minerstone'] = 'Немаш повече каманье',
    ['error_washpan'] = 'Требе ти сито пустиняк!',

    ['Washing_Rocks'] = 'Измиваш каманитье',

    ['Smeth_Rocks'] = 'Претапянье на каманитье',
    
    ['smelt_iron'] = 'Претапяш Железни частици',
    ['smelt_copper'] = 'Претапяш Медни частици',
    ['smelt_gold'] = 'Претапяш Златни частици',

    ['cancel'] = 'Оти спре бре пустиняк',

    ['error_ironCheck'] = 'Немаш Железни частици ',
    ['error_goldCheck'] = 'Немаш Златни частици',
    ['error_copperCheck'] = 'Немаш Медни частици',

    ['ironSmelted'] = 'Претопи ',
    ['ironSmeltedMiddle'] = ' Железни частици в',
    ['ironSmeltedEnd'] = ' Железни кюлчета',

    ['CopperSmelted'] = 'Претопи ',
    ['CopperSmeltedMiddle'] = ' Медни частици в ',
    ['CopperSmeltedEnd'] = ' Медни кюлчета ',

    ['GoldSmelted'] = 'Претопи ',
    ['GoldSmeltedMiddle'] = ' Златни частици в ',
    ['GoldSmeltedEnd'] = ' Златни кюлчета',

    ['error_alreadymined'] = 'Оти копаш тука , он вече го е прекопал!',

    ['Seller'] = 'Говори с Пустиняка',
    ['successfully_sold'] = 'Он ти изкупи всичко , оди да копаш пак !',

}

