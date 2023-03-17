Config = Config or {}

Config.WomanPlayerModels = {
    'mp_f_freemode_01'
}

Config.ManPlayerModels = {
    'mp_m_freemode_01'
}
Config.LoadedManModels = {}
Config.LoadedWomanModels = {}
Config.Stores = {
    [1] =   {shopType = "clothing", coords = vector3(1693.32, 4823.48,41.06 )},
	[2] =   {shopType = "clothing", coords = vector3(-712.215881, -155.352982, 37.4151268)},
	[3] =   {shopType = "clothing", coords = vector3(-1192.94495, -772.688965, 17.3255997)},
	[4] =   {shopType = "clothing", coords = vector3( 422.954, -802.574, 28.491)},
	[5] =   {shopType = "clothing", coords = vector3(-162.658, -303.397, 38.733)},
	[6] =   {shopType = "clothing", coords = vector3(78.162, -1395.429, 28.376)},
	[7] =   {shopType = "clothing", coords = vector3(-822.194, -1074.134, 10.328)},
	[8] =   {shopType = "clothing", coords = vector3(-1450.711, -236.83, 48.809)},
	[9] =   {shopType = "clothing", coords = vector3(4.254, 6512.813, 30.877)},
	[10] =  {shopType = "clothing", coords = vector3(615.180, 2762.933, 41.088)},
	[11] =  {shopType = "clothing", coords = vector3(1196.785, 2709.558, 37.222)},
	[12] =  {shopType = "clothing", coords = vector3(-3171.453, 1043.857, 19.863)},
	[13] =  {shopType = "clothing", coords = vector3(-1100.959, 2710.211, 18.107)},
	[14] =  {shopType = "clothing", coords = vector3(-1207.65, -1456.88, 4.3784737586975)},
    [15] =  {shopType = "clothing", coords = vector3(121.76, -224.6, 53.56)},
	[16] =  {shopType = "clothing", coords = vector3(-1887.47, 2069.78, 145.57)},
	[17] =  {shopType = "barber",  coords = vector3(-814.3, -183.8, 36.6)},
	[18] =  {shopType = "barber",  coords = vector3(136.8, -1708.4, 28.3)},
	[19] =  {shopType = "barber",  coords = vector3(-1282.6, -1116.8, 6.0)},
	[20] =  {shopType = "barber",  coords = vector3(1931.5, 3729.7, 31.8)},
	[21] =  {shopType = "barber",  coords = vector3(1212.8, -472.9, 65.2)},
	[22] =  {shopType = "barber",  coords = vector3(-32.9, -152.3, 56.1)},
	[23] =  {shopType = "barber",  coords = vector3(-278.1, 6228.5, 30.7)}
}

Config.ClothingRooms = {
    [1] = {requiredJob = "police", coords = vector3(462.07, -998.95, 30.69), cameraLocation = vector4(454.42, -990.52, 30.69, 87.8)},
	[2] = {requiredJob = "police", coords = vector3(149.77, -759.7, 242.15), cameraLocation = vector4(149.77, -759.7, 242.15, 68.22)},
    [3] = {requiredJob = "ambulance", coords = vector3(301.57, -599.16, 43.28), cameraLocation = vector4(301.57, -599.16, 43.28, 156.18)}, -- Right double door in Hospital Map that is on QBCore GitHub
    [4] = {requiredJob = "burgershot", coords = vector3(-1185.51, -899.7, 13.98), cameraLocation = vector4(-1185.77, -899.85, 13.98, 123.75)},
	[5] = {requiredJob = "ambulance", coords = vector3(-1819.87, -359.97, 49.45), cameraLocation = vector4(-1819.87, -359.97, 49.45, 227.69)},
	[6] = {requiredJob = "pizzeria", coords = vector3(810.21, -761.61, 31.27), cameraLocation = vector4(810.21, -761.61, 31.27, 299.75)},
	[7] = {requiredJob = "triadjob", coords = vector3(-815.99, -717.47, 28.06), cameraLocation = vector4(-815.99, -717.47, 28.06, 89.15)},
	[8] = {requiredJob = "dai", coords = vector3(800.92, -830.32, 26.34), cameraLocation = vector4(800.92, -830.29, 26.34, 269.57)},
}

Config.Outfits = {
    ["police"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Cadet",
				outfitData = {
					["pants"]       = { item = 16, texture = 1},  -- Pants
					["arms"]        = { item = 49, texture = 0},  -- Arms
					["t-shirt"]     = { item = 17, texture = 0},  -- T Shirt
					["vest"]        = { item = 30, texture = 3},  -- Body Vest
					["torso2"]      = { item = 21, texture = 19},  -- Jacket
					["shoes"]       = { item = 19, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 135, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
			[2] = {
				outfitLabel = "Swat",
				outfitData = {
					["pants"]       = { item = 16, texture = 1},  -- Pants
					["arms"]        = { item = 49, texture = 0},  -- Arms
					["t-shirt"]     = { item = 17, texture = 0},  -- T Shirt
					["vest"]        = { item = 30, texture = 3},  -- Body Vest
					["torso2"]      = { item = 21, texture = 19},  -- Jacket
					["shoes"]       = { item = 19, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 135, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Police3",
				outfitData = {
					["pants"]       = { item = 133, texture = 0},  -- Pants
					["arms"]        = { item = 31, texture = 0},  -- Arms
					["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
					["vest"]        = { item = 34, texture = 0},  -- Body Vest
					["torso2"]      = { item = 48, texture = 0},  -- Jacket
					["shoes"]       = { item = 52, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
			[2] = {
				outfitLabel = "Police4",
				outfitData = {
					["pants"]       = { item = 135, texture = 1},  -- Pants
					["arms"]        = { item = 213, texture = 0},  -- Arms
					["t-shirt"]     = { item = 0, texture = 0},  -- T Shirt
					["vest"]        = { item = 17, texture = 2},  -- Body Vest
					["torso2"]      = { item = 327, texture = 8},  -- Jacket
					["shoes"]       = { item = 52, texture = 0},  -- Shoes
					["accessory"]   = { item = 102, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 149, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 35, texture = 0},  -- Mask
				},
			},	
        },
    },
	["burgershot"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Работно Облекло Мъжко",
				outfitData = {
					["pants"]       = { item = 16, texture = 1},  -- Pants
					["arms"]        = { item = 49, texture = 0},  -- Arms
					["t-shirt"]     = { item = 17, texture = 0},  -- T Shirt
					["vest"]        = { item = 30, texture = 3},  -- Body Vest
					["torso2"]      = { item = 21, texture = 19},  -- Jacket
					["shoes"]       = { item = 19, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 135, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Работно облекло Женско",
				outfitData = {
					["pants"]       = { item = 133, texture = 0},  -- Pants
					["arms"]        = { item = 31, texture = 0},  -- Arms
					["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
					["vest"]        = { item = 34, texture = 0},  -- Body Vest
					["torso2"]      = { item = 48, texture = 0},  -- Jacket
					["shoes"]       = { item = 52, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
        },
    },
	["triadjob"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Работно Облекло Мъжко",
				outfitData = {
					["pants"]       = { item = 16, texture = 1},  -- Pants
					["arms"]        = { item = 49, texture = 0},  -- Arms
					["t-shirt"]     = { item = 17, texture = 0},  -- T Shirt
					["vest"]        = { item = 30, texture = 3},  -- Body Vest
					["torso2"]      = { item = 21, texture = 19},  -- Jacket
					["shoes"]       = { item = 19, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 135, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Работно облекло Женско",
				outfitData = {
					["pants"]       = { item = 133, texture = 0},  -- Pants
					["arms"]        = { item = 31, texture = 0},  -- Arms
					["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
					["vest"]        = { item = 34, texture = 0},  -- Body Vest
					["torso2"]      = { item = 48, texture = 0},  -- Jacket
					["shoes"]       = { item = 52, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
        },
    },
	["dai"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Работно Облекло Мъжко",
				outfitData = {
					["pants"]       = { item = 16, texture = 1},  -- Pants
					["arms"]        = { item = 49, texture = 0},  -- Arms
					["t-shirt"]     = { item = 17, texture = 0},  -- T Shirt
					["vest"]        = { item = 30, texture = 3},  -- Body Vest
					["torso2"]      = { item = 21, texture = 19},  -- Jacket
					["shoes"]       = { item = 19, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 135, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Работно облекло Женско",
				outfitData = {
					["pants"]       = { item = 133, texture = 0},  -- Pants
					["arms"]        = { item = 31, texture = 0},  -- Arms
					["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
					["vest"]        = { item = 34, texture = 0},  -- Body Vest
					["torso2"]      = { item = 48, texture = 0},  -- Jacket
					["shoes"]       = { item = 52, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
        },
    },
	["pizzeria"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Работно Облекло Мъжко",
				outfitData = {
					["pants"]       = { item = 58, texture = 0},  -- Pants
					["arms"]        = { item = 12, texture = 0},  -- Arms
					["t-shirt"]     = { item = 37, texture = 0},  -- T Shirt
					["vest"]        = { item = 0, texture = 0},  -- Body Vest
					["torso2"]      = { item = 393, texture = 0},  -- Jacket
					["shoes"]       = { item = 3, texture = 4},  -- Shoes
					["accessory"]   = { item = 1, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 43, texture = 5},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 5},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Работно облекло Женско",
				outfitData = {
					["pants"]       = { item = 12, texture = 1},  -- Pants
					["arms"]        = { item = 15, texture = 0},  -- Arms
					["t-shirt"]     = { item = 2, texture = 0},  -- T Shirt
					["vest"]        = { item = 0, texture = 0},  -- Body Vest
					["torso2"]      = { item = 94, texture = 2},  -- Jacket
					["shoes"]       = { item = 3, texture = 7},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
        },
    },
	["taxi"] = { -- Job
        ["male"] = { -- Gender
			[1] = { -- Outfits
				outfitLabel = "Работно Облекло Мъжко",
				outfitData = {
					["pants"]       = { item = 4, texture = 2},  -- Pants
					["arms"]        = { item = 8, texture = 0},  -- Arms
					["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
					["vest"]        = { item = 0, texture = 0},  -- Body Vest
					["torso2"]      = { item = 219, texture = 1},  -- Jacket
					["shoes"]       = { item = 8, texture = 0},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
		},
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "Работно облекло Женско",
				outfitData = {
					["pants"]       = { item = 12, texture = 1},  -- Pants
					["arms"]        = { item = 15, texture = 0},  -- Arms
					["t-shirt"]     = { item = 2, texture = 0},  -- T Shirt
					["vest"]        = { item = 34, texture = 0},  -- Body Vest
					["torso2"]      = { item = 94, texture = 2},  -- Jacket
					["shoes"]       = { item = 3, texture = 7},  -- Shoes
					["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
					["bag"]         = { item = 0, texture = 0},  -- Bag
					["hat"]         = { item = 0, texture = 0},  -- Hat
					["glass"]       = { item = 0, texture = 0},  -- Glasses
					["mask"]        = { item = 0, texture = 0},  -- Mask
				},
			},
        },
    },
    ["ambulance"] = { -- Job
        ["male"] = { -- Gender
			[1] = {
				outfitLabel = "ems",
				outfitData = {
					["arms"]        = { item = 96,  texture = 0 },  -- Arms
					["t-shirt"]     = { item = 15, texture = 0 },  -- T-Shirt
					["torso2"]      = { item = 56, texture = 6 },  -- Jackets
					["vest"]        = { item = 0,   texture = 0 },  -- Vest
					["decals"]      = { item = 0,  texture = 0 },  -- Decals
					["accessory"]   = { item = 157, texture = 0 },  -- Neck
					["bag"]         = { item = 0,   texture = 0 },  -- Bag
					["pants"]       = { item = 50,  texture = 0 },  -- Pants
					["shoes"]       = { item = 80,  texture = 1 },  -- Shoes
					["mask"]        = { item = 0, texture = 0 },  -- Mask
					["hat"]         = { item = 0, texture = 0 },  -- Hat
					["glass"]       = { item = 0,   texture = 0 },  -- Glasses
					["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
				},
			},
			[2] = {
				outfitLabel = "ems2",
				outfitData = {
					["arms"]        = { item = 96,  texture = 0 },  -- Arms
					["t-shirt"]     = { item = 15, texture = 0 },  -- T-Shirt
					["torso2"]      = { item = 56, texture = 6 },  -- Jackets
					["vest"]        = { item = 0,   texture = 0 },  -- Vest
					["decals"]      = { item = 0,  texture = 0 },  -- Decals
					["accessory"]   = { item = 157, texture = 0 },  -- Neck
					["bag"]         = { item = 0,   texture = 0 },  -- Bag
					["pants"]       = { item = 50,  texture = 0 },  -- Pants
					["shoes"]       = { item = 80,  texture = 1 },  -- Shoes
					["mask"]        = { item = 0, texture = 0 },  -- Mask
					["hat"]         = { item = 0, texture = 0 },  -- Hat
					["glass"]       = { item = 0,   texture = 0 },  -- Glasses
					["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
				},
			},
        },
        ["female"] = { -- Gender
			[1] = {
				outfitLabel = "T-Shirt",
				outfitData = {
					["arms"]        = { item = 113, texture = 0 },  -- Arms
					["t-shirt"]     = { item = 3, texture = 0 },  -- T-Shirt
					["torso2"]      = { item = 42, texture = 0 },  -- Jackets
					["vest"]        = { item = 0,   texture = 0 },  -- Vest
					["decals"]      = { item = 0,  texture = 0 },  -- Decals
					["accessory"]   = { item = 40,  texture = 0 },  -- Neck
					["bag"]         = { item = 0,   texture = 0 },  -- Bag
					["pants"]       = { item = 27,  texture = 9 },  -- Pants
					["shoes"]       = { item = 131,  texture = 0 },  -- Shoes
					["mask"]        = { item = 0, texture = 0 },  -- Mask
					["hat"]         = { item = 0, texture = 0 },  -- Hat
					["glass"]       = { item = 0,   texture = 0 },  -- Glasses
					["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
				},
			},
			[2] = {
				outfitLabel = "Doctor",
				outfitData = {
					["arms"]        = { item = 113, texture = 0 },  -- Arms
					["t-shirt"]     = { item = 3, texture = 0 },  -- T-Shirt
					["torso2"]      = { item = 42, texture = 0 },  -- Jackets
					["vest"]        = { item = 0,   texture = 0 },  -- Vest
					["decals"]      = { item = 0,  texture = 0 },  -- Decals
					["accessory"]   = { item = 40,  texture = 0 },  -- Neck
					["bag"]         = { item = 0,   texture = 0 },  -- Bag
					["pants"]       = { item = 27,  texture = 0 },  -- Pants
					["shoes"]       = { item = 131,  texture = 9 },  -- Shoes
					["mask"]        = { item = 0, texture = 0 },  -- Mask
					["hat"]         = { item = 0, texture = 0 },  -- Hat
					["glass"]       = { item = 0,   texture = 0 },  -- Glasses
					["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
				},
			},
		},
    },
}
