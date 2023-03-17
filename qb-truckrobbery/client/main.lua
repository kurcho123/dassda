local QBCore = exports['qb-core']:GetCoreObject()
local BlowBackdoor = 0
local SilenceAlarm = 0
local PoliceAlert = 0
local PoliceBlip = 0
local moneyCalc = 1
local LootTime = 1
local GuardsDead = 0
local prop
local lootable = 0
local BlownUp = 0
local TruckBlip
local transport
local MissionStart = 0
local warning = 0
local VehicleCoords = nil
local dealer
local PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

function hintToDisplay(text)
	exports['qb-drawtext']:DrawText(text)
end

function hideLastHint()
	exports['qb-drawtext']:HideText()
end

--[[ --Ped spawn and mission accept
Citizen.CreateThread(function()
	while true do
		local plyCoords = GetEntityCoords(PlayerPedId(), false)
		local dist = #(plyCoords - vector3(Config.MissionMarker.x, Config.MissionMarker.y, Config.MissionMarker.z))
		if dist <= 25.0 then
			if not DoesEntityExist(dealer) then
				RequestModel("s_m_y_dealer_01")
				while not HasModelLoaded("s_m_y_dealer_01") do
					Wait(10)
				end
				dealer = CreatePed(26, "s_m_y_dealer_01", Config.DealerCoords.x, Config.DealerCoords.y, Config.DealerCoords.z, 268.9422, false, false)
				SetEntityHeading(dealer, 1.8)
				SetBlockingOfNonTemporaryEvents(dealer, true)
				TaskStartScenarioInPlace(dealer, "WORLD_HUMAN_AA_SMOKE", 0, false)
			end
			if dist <= 2.0 then
				QBCore.Functions.DrawText3D(Config.MissionMarker.x, Config.MissionMarker.y, Config.MissionMarker.z, "~b~[E]~w~ To accept mission")
				if IsControlJustPressed(0, 38) then
					TriggerServerEvent("AttackTransport:akceptujto")
					Citizen.Wait(500)
				end
			end
		else
			Citizen.Wait(500)
		end
		Citizen.Wait(0)
	end
end) ]]
---


function CheckGuards()
	if IsPedDeadOrDying(pilot) == 1 or IsPedDeadOrDying(navigator) == 1 then
		GuardsDead = 1
	end
end

function AlertPolice()
	--	local a,b,c = table.unpack(GetEntityCoords(transport))
	--	local AlertCoordA = tonumber(string.format("%.2f", a))
	--	local AlertCoordB = tonumber(string.format("%.2f", b))
	--	local AlertCoordC = tonumber(string.format("%.2f", c))
	--	TriggerServerEvent('AttackTransport:zawiadompsy', AlertCoordA, AlertCoordB, AlertCoordC)
	--	Citizen.Wait(500)
	
	local pos = GetEntityCoords(PlayerPedId())
	
	local DispatchData = {
		jobs = {["police"] = true},
		code = "10-03",
		callname = "Armored Truck Robbery",
		coords = pos,
		info = {{
			icon = "fas fa-truck",
			label = "Armored truck explosions sounds!"
		}},
		blip = { -- All the blip settings.
			label = "10-03", -- Blip label.
			sprite = 42, -- Blip sprties and colours can by found here: https://docs.fivem.net/docs/game-references/blips/
			colour = 0,
			scale = 1.0,
			flash = true,
			fadeTime = 250, -- about of time for the blip to fade away.
			leaveMiniMap = false -- sets if the blips stay on the mini map or not even if not close to the blip location.
		},
		sound = sound,
	}
	exports['mw-dispatch']:NewAlert(DispatchData)	
	
	end


RegisterNetEvent('AttackTransport:InfoForLspd')
AddEventHandler('AttackTransport:InfoForLspd', function(x, y, z)
	if PlayerJob ~= nil and PlayerJob.name == 'police' then
		if PoliceBlip == 0 then
			PoliceBlip = 1
			local blip = AddBlipForCoord(x, y, z)
			SetBlipSprite(blip, 67)
			SetBlipScale(blip, 1.0)
			SetBlipColour(blip, 2)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('Assault on the transport of cash')
			EndTextCommandSetBlipName(blip)
			SetNewWaypoint(x, y)
			Citizen.Wait(10000)
			RemoveBlip(blip)
			PoliceBlip = 0
		end

		local PoliceCoords = GetEntityCoords(PlayerPedId(), false)
		local PoliceDist = #(PoliceCoords - vector3(x, y, z))
		if PoliceDist <= 4.5 then
			local dict = "anim@mp_player_intmenu@key_fob@"

			RequestAnimDict(dict)
			while not HasAnimDictLoaded(dict) do
				Citizen.Wait(100)
			end
			if SilenceAlarm == 0 then
				hintToDisplay('Press ~INPUT_DETONATE~ to silence the alarm')
				SilenceAlarm = 1
			end
			if IsControlPressed(0, 47) and GuardsDead == 1 then
				hideLastHint()
				TaskPlayAnim(PlayerPedId(), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
				TriggerEvent('AttackTransport:CleanUp')
				RemoveBlip(TruckBlip)
				Citizen.Wait(500)
			end
		end

	end
end)

RegisterNetEvent('qb-armoredtruckheist:client:911alert')
AddEventHandler('qb-armoredtruckheist:client:911alert', function()
	if PoliceAlert == 0 then
		local transCoords = GetEntityCoords(transport)
		local s1, s2 = Citizen.InvokeNative(0x2EB41072B4C1E4C0, transCoords.x, transCoords.y, transCoords.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
		local street1 = GetStreetNameFromHashKey(s1)
		local street2 = GetStreetNameFromHashKey(s2)
		local streetLabel = street1
		if street2 ~= nil then
			streetLabel = streetLabel .. " " .. street2
		end
		TriggerServerEvent("qb-armoredtruckheist:server:callCops", streetLabel, transCoords)
		PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
		PoliceAlert = 1
	end
end)

RegisterNetEvent('qb-armoredtruckheist:client:robberyCall')
AddEventHandler('qb-armoredtruckheist:client:robberyCall', function(streetLabel, coords)
	if PlayerJob.name == "police" then
		local store = "Armored Truck"
		PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
		TriggerEvent('qb-policealerts:client:AddPoliceAlert', {
			timeOut = 10000,
			alertTitle = "Armored Truck Robbery Attempt",
			coords = {
				x = coords.x,
				y = coords.y,
				z = coords.z,
			},
			details = {
				[1] = {
					icon = '<i class="fas fa-university"></i>',
					detail = store,
				},
				[2] = {
					icon = '<i class="fas fa-globe-europe"></i>',
					detail = streetLabel,
				},
			},
			callSign = QBCore.Functions.GetPlayerData().metadata["callsign"],
		})
		local transG = 250
		local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
		SetBlipSprite(blip, 487)
		SetBlipColour(blip, 4)
		SetBlipDisplay(blip, 4)
		SetBlipAlpha(blip, transG)
		SetBlipScale(blip, 1.2)
		SetBlipFlashes(blip, true)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentString("10-90: Armored Truck Robbery")
		EndTextCommandSetBlipName(blip)
		while transG ~= 0 do
			Wait(180 * 4)
			transG = transG - 1
			SetBlipAlpha(blip, transG)
			if transG == 0 then
				SetBlipSprite(blip, 2)
				RemoveBlip(blip)
				return
			end
		end
	end
end)

function MissionNotification()
	Citizen.Wait(2000)
	TriggerServerEvent('qb-phone:server:sendNewMail', {
		sender = "The Boss",
		subject = "New Target",
		message = "So you are intrested in making some money? good... go get yourself a Gun and make it happen... sending you the location now.",
	})
	Citizen.Wait(3000)
end
---
--
RegisterNetEvent('AttackTransport:Pozwolwykonac')
AddEventHandler('AttackTransport:Pozwolwykonac', function()
	MissionNotification()
	ClearPedTasks(dealer)
	TaskWanderStandard(dealer, 100,100)
	local DrawCoord = math.random(1,5)
	VehicleCoords = Config.VehicleSpawn[DrawCoord]

	local spawned = false
	Citizen.CreateThread(function()
		local ped = PlayerPedId()
		SetNewWaypoint(VehicleCoords.x, VehicleCoords.y)
		while not spawned do
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z))
			if distance < 200 then
				spawned = true
				RequestModel(GetHashKey('stockade'))
				while not HasModelLoaded(GetHashKey('stockade')) do
					Citizen.Wait(0)
				end
				ClearAreaOfVehicles(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 15.0, false, false, false, false, false)
				transport = CreateVehicle(GetHashKey('stockade'), VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 52.0, true, true)
				SetEntityAsMissionEntity(transport)
				TruckBlip = AddBlipForEntity(transport)
				SetBlipSprite(TruckBlip, 57)
				SetBlipColour(TruckBlip, 1)
				SetBlipFlashes(TruckBlip, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString('Van with Cash')
				EndTextCommandSetBlipName(TruckBlip)
				--
				RequestModel("s_m_m_security_01")
				while not HasModelLoaded("s_m_m_security_01") do
					Wait(10)
				end
				pilot = CreatePed(26, "s_m_m_security_01", VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 268.9422, true, false)
				navigator = CreatePed(26, "s_m_m_security_01", VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 268.9422, true, false)
				navigator2 = CreatePed(26, "s_m_m_security_01", VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 268.9422, true, false)
				
				SetPedIntoVehicle(pilot, transport, -1)
				SetPedIntoVehicle(navigator, transport, 0)
				SetPedIntoVehicle(navigator2, transport, 1)
				SetPedFleeAttributes(pilot, 0, 0)
				SetPedCombatAttributes(pilot, 46, 1)
				SetPedCombatAbility(pilot, 100)
				SetPedCombatMovement(pilot, 2)
				SetPedCombatRange(pilot, 2)
				SetPedKeepTask(pilot, true)
				GiveWeaponToPed(pilot, GetHashKey(Config.DriverWep),250,false,true)
				SetPedAsCop(pilot, true)
				--
				SetPedFleeAttributes(navigator, 0, 0)
				SetPedCombatAttributes(navigator, 46, 1)
				SetPedCombatAbility(navigator, 100)
				SetPedCombatMovement(navigator, 2)
				SetPedCombatRange(navigator, 2)
				SetPedKeepTask(navigator, true)
				GiveWeaponToPed(navigator, GetHashKey(Config.NavWep),250,false,true)
				SetPedAsCop(navigator, true)
				--
				SetPedFleeAttributes(navigator2, 0, 0)
				SetPedCombatAttributes(navigator2, 46, 1)
				SetPedCombatAbility(navigator2, 100)
				SetPedCombatMovement(navigator2, 2)
				SetPedCombatRange(navigator2, 2)
				SetPedKeepTask(navigator2, true)
				GiveWeaponToPed(navigator2, GetHashKey(Config.NavWep),250,false,true)
				SetPedAsCop(navigator2, true)
				--
				TaskVehicleDriveWander(pilot, transport, 80.0, 443)
			end
			startMission()
			Wait(500)
		end
	end)
	MissionStart = 1
end)

function stopAndBeAngry() 
	Citizen.CreateThread(function()
		SetVehicleBrake(transport)
		Wait(1000)

		GiveWeaponToPed(navigator, GetHashKey(Config.NavWeap), 420, 0, 1)
		GiveWeaponToPed(navigator2, GetHashKey(Config.NavWeap), 420, 0, 1)
		GiveWeaponToPed(pilot, GetHashKey(Config.DriverWeap), 420, 0, 1)
	
		SetPedDropsWeaponsWhenDead(navigator,false)
		SetPedRelationshipGroupDefaultHash(navigator,GetHashKey('COP'))
		SetPedRelationshipGroupHash(navigator,GetHashKey('COP'))
		SetPedAsCop(navigator,true)
		SetCanAttackFriendly(navigator,false,true)

		SetPedDropsWeaponsWhenDead(navigator2,false)
		SetPedRelationshipGroupDefaultHash(navigator2,GetHashKey('COP'))
		SetPedRelationshipGroupHash(navigator2,GetHashKey('COP'))
		SetPedAsCop(navigator2,true)
		SetCanAttackFriendly(navigator2,false,true)
	
		SetPedDropsWeaponsWhenDead(pilot,false)
		SetPedRelationshipGroupDefaultHash(pilot,GetHashKey('COP'))
		SetPedRelationshipGroupHash(pilot,GetHashKey('COP'))
		SetPedAsCop(pilot,true)
		SetCanAttackFriendly(pilot,false,true)

		TaskCombatPed(pilot, GetPlayerPed(-1), 0, 16)
		TaskCombatPed(navigator, GetPlayerPed(-1), 0, 16)
		TaskCombatPed(navigator2, GetPlayerPed(-1), 0, 16)
		
		TaskEveryoneLeaveVehicle(transport)
	end)
end

--Crims side of the mission
function startMission()
	Citizen.CreateThread(function()
		while MissionStart == 1 do
			local plyCoords = GetEntityCoords(PlayerPedId(), false)
			local transCoords = GetEntityCoords(transport)
			local dist = #(plyCoords - transCoords)
			if dist <= 55.0  then
				DrawMarker(0, transCoords.x, transCoords.y, transCoords.z+4.5, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 135, 31, 35, 100, 1, 0, 0, 0)
				if warning == 0 then
					warning = 1
					stopAndBeAngry()
					QBCore.Functions.Notify("Get rid of the guards before you place the bomb.", "error")
					AlertPolice()
				end

				if GuardsDead == 0 then
					CheckGuards()
				end

				if dist <= 7 and BlownUp == 0 and PlayerJob.name ~= 'police' then
					if BlowBackdoor == 0 then
						hintToDisplay('Press [G] to blow up the back door and take the money')
						if IsControlJustPressed(0, 47) then
							BlowBackdoor = 1
							CheckVehicleInformation()
							TriggerEvent("qb-armoredtruckheist:client:911alert")
							hideLastHint()
							Wait(5000)
						end
					end
				end
			end
			Wait(0)
		end
	end)
end

function CheckVehicleInformation()
	if IsVehicleStopped(transport) then
		if IsVehicleSeatFree(transport, -1) and IsVehicleSeatFree(transport, 0) and IsVehicleSeatFree(transport, 1) and GuardsDead == 1 then
			if not IsEntityInWater(PlayerPedId()) then
				RequestAnimDict('anim@heists@ornate_bank@thermal_charge_heels')
				while not HasAnimDictLoaded('anim@heists@ornate_bank@thermal_charge_heels') do
					Citizen.Wait(50)
				end
				local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
				prop = CreateObject(GetHashKey('prop_c4_final_green'), x, y, z+0.2,  true,  true, true)
				AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.06, 0.0, 0.06, 90.0, 0.0, 0.0, true, true, false, true, 1, true)
				SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"),true)
				FreezeEntityPosition(PlayerPedId(), true)
				TaskPlayAnim(PlayerPedId(), 'anim@heists@ornate_bank@thermal_charge_heels', "thermal_charge", 3.0, -8, -1, 63, 0, 0, 0, 0 )
				Citizen.Wait(5500)
				ClearPedTasks(PlayerPedId())
				DetachEntity(prop)
				AttachEntityToEntity(prop, transport, GetEntityBoneIndexByName(transport, 'door_pside_r'), -0.7, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
				hideLastHint()
				QBCore.Functions.Notify('The load will be detonated in '..Config.TimeToBlow ..' seconds.', "error")
				FreezeEntityPosition(PlayerPedId(), false)
				Citizen.Wait(Config.TimeToBlow*1000)
				local transCoords = GetEntityCoords(transport)
				SetVehicleDoorBroken(transport, 2, false)
				SetVehicleDoorBroken(transport, 3, false)
				AddExplosion(transCoords.x,transCoords.y,transCoords.z, 'EXPLOSION_TANKER', 2.0, true, false, 2.0)
				-- ApplyForceToEntity(transport, 0, transCoords.x,transCoords.y,transCoords.z, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
				BlownUp = 1
				lootable = 1
				QBCore.Functions.Notify('You can start collecting cash.', "success")
				RemoveBlip(TruckBlip)
			else
				QBCore.Functions.Notify('Get out of the water', "error")
			end
		else
			QBCore.Functions.Notify('The vehicle must be empty to place the load', "error")
		end
	else
		QBCore.Functions.Notify('You can not rob a vehicle that is moving.', "error")
	end
end

--Crim Client
Citizen.CreateThread(function()
    while true do
		if lootable == 1 then
			local plyCoords = GetEntityCoords(PlayerPedId(), false)
			local transCoords = GetEntityCoords(transport)
            local dist = #(plyCoords - transCoords)
			if dist <= 4.5 then
				hintToDisplay('Press [E] to take the money')
				if IsControlJustPressed(0, 38) or IsDisabledControlJustPressed(0, 38) then
					lootable = 0
					TakingMoney()
					hideLastHint()
					Wait(500)
				end
			else
				Wait(500)
			end
		else
			Wait(1500)
		end
		Wait(0)
	end
end)


RegisterNetEvent('AttackTransport:CleanUp')
AddEventHandler('AttackTransport:CleanUp', function()
	BlowBackdoor = 0
	SilenceAlarm = 0
	PoliceAlert = 0
	PoliceBlip = 0
	moneyCalc = 1
	LootTime = 1
	GuardsDead = 0
	lootable = 0
	BlownUp = 0
	MissionStart = 0
	warning = 0
end)

--Crim Client
function TakingMoney()
	RequestAnimDict('anim@heists@ornate_bank@grab_cash_heels')
	while not HasAnimDictLoaded('anim@heists@ornate_bank@grab_cash_heels') do
		Citizen.Wait(50)
	end

	local PedCoords = GetEntityCoords(PlayerPedId())
	bag = CreateObject(GetHashKey('prop_cs_heist_bag_02'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	AttachEntityToEntity(bag, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.0, 0.0, -0.16, 250.0, -30.0, 0.0, false, false, false, false, 2, true)
	TaskPlayAnim(PlayerPedId(), "anim@heists@ornate_bank@grab_cash_heels", "grab", 8.0, -8.0, -1, 1, 0, false, false, false)
	FreezeEntityPosition(PlayerPedId(), true)
	QBCore.Functions.Notify('You are packing cash into a bag', "success")
	local _time = GetGameTimer()
	while GetGameTimer() - _time < 20000 do
		if IsControlPressed(0, 47) then
			hideLastHint()
			break
		end
		hintToDisplay('Hold [G] to bail out')
		Citizen.Wait(1)
	end
	LootTime = GetGameTimer() - _time
	DeleteEntity(bag)
	ClearPedTasks(PlayerPedId())
	FreezeEntityPosition(PlayerPedId(), false)
	SetPedComponentVariation(PlayerPedId(), 5, 45, 0, 2)
	TriggerServerEvent("AttackTransport:graczZrobilnapad", LootTime)
	TriggerEvent('AttackTransport:CleanUp')
	Citizen.Wait(2500)
end
