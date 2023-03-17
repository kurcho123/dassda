QBCore = exports['qb-core']:GetCoreObject()

local isBagPlaced = false

RegisterNetEvent('kq_outfitbag:placeBag')
AddEventHandler('kq_outfitbag:placeBag', function(bag)
    bagObject = CreateBagObject(bag)
    Wait(2000)
    Bag = GetObject(GetEntityCoords(PlayerPedId()))
    isBagPlaced = true
end)



CreateThread(function()
    while true do 
        Wait(1000)
        if isBagPlaced == true and Bag then
            local pPos = GetEntityCoords(PlayerPedId())
            local bagPos = GetEntityCoords(Bag)
            local distance = GetDistanceBetweenCoords(pPos.x, pPos.y, pPos.z, bagPos.x, bagPos.y, bagPos.z, true);
            if (distance > 50) then
                TriggerServerEvent('kq_outfitbag:server:forceclosebag', bagPos)
                SetEntityCoords(Bag, 0, 0, 0, false, false, false, false)
                isBagPlaced = false;
                Bag = nil
            end
        end
    end
end)

RegisterNetEvent('kq_outfitbag:setBagPicked', function()
    isBagPlaced = false
end)

RegisterNetEvent('kq_outfitbag:client:forceclosebag', function(bagCoords)
    local pPos = GetEntityCoords(PlayerPedId())
    local bagPos = bagCoords
    local distance = GetDistanceBetweenCoords(pPos.x, pPos.y, pPos.z, bagPos.x, bagPos.y, bagPos.z, true);
    if (distance < 5) then 
        SendNUIMessage({
            event = 'close'
        })
    end
end)

function GetObject(playerCoords)
    local handle, object = FindFirstObject()
    local success
    local robject = nil
    repeat
        if object then
            local pos = GetEntityCoords(object)
            local distance = #(playerCoords-pos)
            if distance < 5.0 then
                robject = object
            end
        end
        success, object = FindNextObject(handle)
    until not success
    EndFindObject(handle)
    return robject
end

-- This function is responsible for creating the text shown on the bottom of the screen
function DrawMissionText(text, time)
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    DrawSubtitleTimed(time or 30000, 1)
end

-- This function is responsible for drawing all the 3d texts ('Press [E] to prepare for an engine swap' e.g)
function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
