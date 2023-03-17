--██╗███╗░░██╗████████╗███████╗██████╗░██╗░█████╗░██████╗░░██████╗
--██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗██║██╔══██╗██╔══██╗██╔════╝
--██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝██║██║░░██║██████╔╝╚█████╗░
--██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗██║██║░░██║██╔══██╗░╚═══██╗
--██║██║░╚███║░░░██║░░░███████╗██║░░██║██║╚█████╔╝██║░░██║██████╔╝
--╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░╚════╝░╚═╝░░╚═╝╚═════╝░

-- Test shell configuration (You can see the command in config_client.lua)
Config.TestShell = {
  ["house"] = { -- Test name.
      obj = `playerhouse_tier1` -- Test shell.
  },
  --[[ ["trevor"] = { -- Test name.
      obj = `trevors_shell` -- Test shell.
  }, ]]
}

Config.AddonsInteriors = { -- Add your custom interiors here!
  -- Default interiors from quasar_shells (Don't remove this!)
  { -- 1
    nameTier = `playerhouse_tier1`, 
    numberTier = 1,
    offset = { x = 4.251012802124, y = -15.901171875, z = 2.5, h = 2.2633972168 },
    label = 'House 1'
  }, 
  { -- 2
    nameTier = `trevors_shell`, 
    numberTier = 2,
    offset = { x = 0.1, y = -3.9, z = 7.9, h = 358.633972168 },
    label = 'Trevor'
  }, 
  { -- 3
    nameTier = `micheal_shell`, 
    numberTier = 3, -- Start from 100 to top
    offset = { x = -10.572736328125, y = 2.65636328125, z = 1.4, h = 265.633972168 },
    label = 'Michael'
  }, 
  { -- 4
    nameTier = `appartment`, 
    numberTier = 4, -- Start from 100 to top
    offset = { x = 4.7, y = -6.2, z = 1.2, h = 358.633972168 },
    label = 'Apartment'
  }, 
  { -- 5
    nameTier = `caravan_shell`, 
    numberTier = 5, -- Start from 100 to top
    offset = { x = -1.4, y = -2.1, z = 2.3, h = 358.633972168 },
    label = 'Caravan'
  }, 
  { -- 6
    nameTier = `frankelientje`, 
    numberTier = 6, -- Start from 100 to top
    offset = { x = 10.8, y = 7.8, z = 6.7, h = 125.5 },
    label = 'Frankelientje'
  }, 
  { -- 7
    nameTier = `tante_shell`, 
    numberTier = 7, -- Start from 100 to top
    offset = { x = -0.4, y = -5.7, z = 2.7, h = 358.633972168 },
    label = 'Tante'
  }, 
  
  
--[[ K4mb1 Starter Housing FREE: https://www.k4mb1maps.com/package/5015840.

  { 
    nameTier = `standardmotel_shell`, 
    numberTier = 8,
    offset = { x = -0.473511, y = -2.465332, z = 1, h = 358.633972168 },
    label = 'Modern Motel'
  }, 
  { 
    nameTier = `modernhotel_shell`, 
    numberTier = 9,
    offset = { x = 4.991730, y = 4.320801, z = 1.2, h = 358.633972168 },
    label = 'Standart Motel'
  }, 
  { 
    nameTier = `furnitured_midapart`, 
    numberTier = 10,
    offset = { x = 1.481842, y = -10.215332, z = 1.2, h = 358.633972168 },
    label = 'Mid Apart'
  }, 
  { 
    nameTier = `shell_garagem`,
    numberTier = 11,
    offset = { x = 13.833588, y = 1.626221, z = 1.2, h = 358.633972168 },
    label = 'Garage'
  }, 
  { 
    nameTier = `shell_office1`,
    numberTier = 12,
    offset = { x = 1.112735, y = 5.006403, z = 1.2, h = 358.633972168 },
    label = 'Office 1'
  }, 
  { 
    nameTier = `shell_store1`,
    numberTier = 13,
    offset = { x = -2.697184, y = 4.684138, z = 1.2, h = 358.633972168 },
    label = 'Store 1'
  }, 
  { 
    nameTier = `shell_store1`,
    numberTier = 14,
    offset = { x = 13.833588, y = 1.626221, z = 1.2, h = 358.633972168 },
    label = 'Garage'
  }, 
  { 
    nameTier = `shell_warehouse1`,
    numberTier = 15,
    offset = { x = -8.895659, y = 0.169503, z = 1.2, h = 358.633972168 },
    label = 'Warehouse 1'
  }, 
  { 
    nameTier = `container_shell`,
    numberTier = 16,
    offset = { x = 0.099396, y = -5.647644, z = -0.212524, h = 0.0 },
    label = 'Container'
  }, 
  { 
    nameTier = `shell_michael`,
    numberTier = 17,
    offset = { x = -9.754163, y = 5.688521, z = 1.2, h = 358.633972168 },
    label = 'Michael'
  }, 
  { 
    nameTier = `shell_frankaunt`,
    numberTier = 18,
    offset = { x = -0.248180, y = -6.009651, z = 1.2, h = 358.633972168 },
    label = 'Frankaunt'
  }, 
  { 
    nameTier = `shell_ranch`,
    numberTier = 19,
    offset = { x = -1.329970, y = 5.418801, z = 1.2, h = 358.633972168 },
    label = 'Ranch'
  }, 
  { 
    nameTier = `shell_trailer`,
    numberTier = 20,
    offset = { x = -1.457713, y = -1.989568, z = 1.2, h = 358.633972168 },
    label = 'Trailer'
  }, 
  { 
    nameTier = `shell_lester`,
    numberTier = 21,
    offset = { x = -1.606091, y = -5.912278, z = 1.2, h = 358.633972168 },
    label = 'Lester'
  }, 
  { 
    nameTier = `shell_v16mid`,
    numberTier = 22,
    offset = { x = 1.443699, y = -14.254955, z = 1.2, h = 358.633972168 },
    label = 'v16 Mid'
  }, 
  { 
    nameTier = `shell_trevor`,
    numberTier = 23,
    offset = { x = 0.184536, y = -3.859197, z = 1.2, h = 358.633972168 },
    label = 'Trevor'
  }, 
  { 
    nameTier = `shell_v16low`,
    numberTier = 19,
    offset = { x = 4.684745, y = -6.564815, z = 1.2, h = 358.633972168 },
    label = 'v16 Low'
  },  ]]
}