--░█████╗░██╗░░░░░██╗███████╗███╗░░██╗████████╗
--██╔══██╗██║░░░░░██║██╔════╝████╗░██║╚══██╔══╝
--██║░░╚═╝██║░░░░░██║█████╗░░██╔██╗██║░░░██║░░░
--██║░░██╗██║░░░░░██║██╔══╝░░██║╚████║░░░██║░░░
--╚█████╔╝███████╗██║███████╗██║░╚███║░░░██║░░░
--░╚════╝░╚══════╝╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░

RegisterNetEvent('qs-housing:client:createHouses')
AddEventHandler('qs-housing:client:createHouses', function(price, isMlo)
    if isMlo then
        local polyPoints, minZ, maxZ, testCoords = SetupPolyPoints(isMlo)
        if not polyPoints then return end
        local pos = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local s1, s2 = Citizen.InvokeNative(0x2EB41072B4C1E4C0, pos.x, pos.y, pos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
        local street = GetStreetNameFromHashKey(s1)
        local coords = {
            enter 	= { x = pos.x, y = pos.y, z = pos.z, h = heading},
            cam 	= { x = pos.x, y = pos.y, z = pos.z, h = heading, yaw = -10.00},
            PolyZone = {
                usePolyZone = true,
                points = polyPoints,
                minZ = minZ,
                maxZ = maxZ
            },
            test = testCoords
        }
        street = street:gsub("%-", " ")
        TriggerServerEvent('qs-housing:server:addNewHouse', street, coords, price, 1, isMlo)
    else
        local tier, coords = RenderCam()
        if tier then
            local polyPoints, minZ, maxZ = SetupPolyPoints()
            if not polyPoints then return end
            local pos = GetEntityCoords(PlayerPedId())
            local heading = GetEntityHeading(PlayerPedId())
            local s1, s2 = Citizen.InvokeNative(0x2EB41072B4C1E4C0, pos.x, pos.y, pos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
            local street = GetStreetNameFromHashKey(s1)
            local coords = {
                enter 	= { x = pos.x, y = pos.y, z = pos.z, h = heading},
                cam 	= { x = pos.x, y = pos.y, z = pos.z, h = heading, yaw = -10.00},
                PolyZone = {
                    usePolyZone = true,
                    points = polyPoints,
                    minZ = minZ,
                    maxZ = maxZ
                },
                interiorCoords = coords
            }
            street = street:gsub("%-", " ")
            TriggerServerEvent('qs-housing:server:addNewHouse', street, coords, price, tier, isMlo)
        end
    end
end)

-- Command for offset test.
RegisterCommand("offset", function(src, args)
    if args[1] and Config.TestShell[args[1]] then
        TestShell(Config.TestShell[args[1]].obj, args[1])
    else
        SendTextMessage(Lang("OFFSET_NO_EXIST").. " " ..args[1], 'error')
    end
end)

-- Check if the house has a credit or not.
RegisterCommand('checkhouse', function()
    if not closesthouse then 
        return SendTextMessage(Lang("NO_HOUSES_NEARBY"), 'error') 
    end
    QSHousing.TriggerServerCallback('qs-housing:GetCreditState', function(state)
        if state then
            SendTextMessage(Lang("HOUSING_NOTIFICATION_IN_DEBT"), 'inform')
        else
            SendTextMessage(Lang("HOUSING_NOTIFICATION_NO_DEBT"), 'inform')
        end
    end, closesthouse)
end)