Config.Framework = 'QBCore' -- Set 'ESX' or 'QBCore'.

Config.CustomFrameworkExport = false -- Do you want to add your own export?
function CustomFrameworkExport() -- Add the export here, as in the following example.
    -- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    -- QBCore = exports['qb-core']:GetCoreObject()
end

-- ESX Config.
Config.getSharedObject = 'esx:getSharedObject' -- Modify your ESX-based framework here.
Config.playerLoaded = 'esx:playerLoaded' -- Modify your ESX-based framework here.
Config.setJob = 'esx:setJob' -- Modify your ESX-based framework here.

Config.ESXMenu = 'esx_menu_default' -- You can choose between 'esx_menu_default' or 'nh-context' , if you choose nh-conext you must use nh-keyboard too.

-- Skinchanger and esx_skin events.
Config.skinchangergetSkin = "skinchanger:getSkin"
Config.skinchangerloadClothes = "skinchanger:loadClothes"
Config.esx_skinsetLastSkin = "esx_skin:setLastSkin"
Config.esx_skinsave = "esx_skin:save"

Config.esxVersion = 'new' -- If you are using es_extended 1.2, v1final or legacy use 'new', if you are using es_extended 1.1 use 'old'.

-- In case you are using server custom events from esx_datastore and esx_addoninventory.
Config.esx_addoninventorygetInventory = "esx_addoninventory:getInventory"
Config.esx_datastoregetDataStore = "esx_datastore:getDataStore"
Config.esx_addonaccountgetAccount = "esx_addonaccount:getAccount"

-- Custom event in case you are using esx_inventoryhud (Coming soon)
Config.esx_inventoryhudopenPropertyInventory = "esx_inventoryhud:openPropertyInventory"

-- Multicharacter Event.
Config.MulticharacterEventESX = 'esx:onPlayerLogout'

-- Society events.
Config.societyregisterSociety = 'esx_society:registerSociety'
Config.addonaccountgetSharedAccount = 'esx_addonaccount:getSharedAccount'
Config.societyopenBossMenu = 'esx_society:openBossMenu'


------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- QBCore Config.
Config.QBCoreGetCoreObject = 'qb-core' -- Choose the name of your qb-core export.

-- Clarification, qb-menu should not have its event names changed, use it with events called qb-menu:blablabla.
Config.QBCoreInputName = 'qb-input' -- Choose the name of your qb-input.

Config.QBCoreFrameworkPlayersTable = 'players' -- Name of the table where the data of the players its stored.
Config.QBCoreFrameworkPlayerSkinsTable = 'playerskins' -- Name of the table where the data of the skin players its stored.

Config.QBCoreplayerLoaded = 'QBCore:Client:OnPlayerLoaded' -- Choose the name of your qb-core exports.
Config.QBCoreSetPlayerData = 'QBCore:Player:SetPlayerData' -- Choose the name of your qb-core exports.

-- Multicharacter Event
Config.MulticharacterEventQBCore = 'QBCore:Client:OnPlayerUnload' -- Choose the name of your qb-core exports.