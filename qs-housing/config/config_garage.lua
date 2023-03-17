--░██████╗░░█████╗░██████╗░░█████╗░░██████╗░███████╗
--██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔════╝░██╔════╝
--██║░░██╗░███████║██████╔╝███████║██║░░██╗░█████╗░░
--██║░░╚██╗██╔══██║██╔══██╗██╔══██║██║░░╚██╗██╔══╝░░
--╚██████╔╝██║░░██║██║░░██║██║░░██║╚██████╔╝███████╗
--░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝

Config.GarageSystem = 'false' -- Only select between "qs-garages", "qb-garages", "cd_garage", "other" (custom) or false to disable it.

Config.MarkerGarage = { --Modify the marker as you like.
    type = 2, 
    scale = {x = 0.2, y = 0.2, z = 0.1}, 
    colour = {r = 71, g = 181, b = 255, a = 120},
    movement = 1 --Use 0 to disable movement.
}

-- If you are using a config differnt to qs-garages you can edit this code to make it compatible with your custom garage
function StoreVehicle(house)
    if Config.GarageSystem == 'qb-garages' then 
        TriggerEvent('qb-garages:StoreVehicle_Main', 1, false) -- Save vehicle
    elseif Config.GarageSystem == 'other' then 
        -- Add your own code here.
    end
end

function OpenGarage(house)
    if Config.GarageSystem == 'qb-garages' then 
        TriggerEvent('qb-garages:PropertyGarage', 'quick', nil) -- Open spawn vehicle menu
    elseif Config.GarageSystem == 'other' then 
        -- Add your own code here.
    end
end