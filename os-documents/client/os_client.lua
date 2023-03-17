QBCore = exports['qb-core']:GetCoreObject()
local PlayerData                = {}
local UI_MOUSE_FOCUS = false
local USER_DOCUMENTS = {}
local fontId
local CURRENT_DOCUMENT = nil
local DOCUMENT_FORMS = nil

local MENU_OPTIONS = {
    x = 0.5,
    y = 0.0269,
    width = Config.OSWid,
    height = Config.OShei,
    scale = Config.OSscale,
    font = fontId,
    menu_title = Config.OSCommunityActionText,
    menu_subtitle = ('Опций за документи'),
    color_r = Config.OSr,
    color_g = Config.OSg,
    color_b = Config.OSb,
}


Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(69)
	end

    PlayerData = QBCore.Functions.GetPlayerData()

    DOCUMENT_FORMS = Config.OSCommunity

    if Config.UseOSCustomFonts == true then
        RegisterFontFile(Config.CustomOSFontFile)
        fontId = RegisterFontId(Config.CustomOSFontId)
        MENU_OPTIONS.font = fontId
    else
        MENU_OPTIONS.font = Config.OSCommunityFont
    end


    GetAllUserForms()
    SetNuiFocus(false, false)

end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    GetAllUserForms()
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4)
        if IsControlJustReleased(0, Config.OSCommunityMenuKey) and GetLastInputMethod(2) then
            Menu.hidden = false
            OpenMainMenu()
    	end
        Menu.renderGUI(MENU_OPTIONS)
    end
 end)

function OpenMainMenu()
    ClearMenu()
    Menu.addButton("Публични документи", "OpenNewPublicFormMenu", nil)
	Menu.addButton("Работни документи", "OpenNewJobFormMenu", nil)
    Menu.addButton("Запазени документи", "OpenMyDocumentsMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function CopyFormToPlayer(aPlayer)
    TriggerServerEvent('nekvitupi-documents:CopyToPlayer', aPlayer, CURRENT_DOCUMENT)
    CURRENT_DOCUMENT = nil;
    CloseMenu()
end

function ShowToNearestPlayers(aDocument)
    ClearMenu()
    local players_clean = GetNeareastPlayers()
    CURRENT_DOCUMENT = aDocument
    if #players_clean > 0 then
        for i=1, #players_clean, 1 do
            Menu.addButton(players_clean[i].playerName .. "[" .. tostring(players_clean[i].playerId) .. "]", "ShowDocument", players_clean[i].playerId)
        end
    else
        Menu.addButton("Няма на кого да го покажете", "CloseMenu", nil)
    end
    Menu.addButton("Затваряне", "CloseMenu", nil)
end

function CopyToNearestPlayers(aDocument)
    ClearMenu()
    local players_clean = GetNeareastPlayers()
    CURRENT_DOCUMENT = aDocument
    if #players_clean > 0 then
        for i=1, #players_clean, 1 do
            Menu.addButton(players_clean[i].playerName .. "[" .. tostring(players_clean[i].playerId) .. "]", "CopyFormToPlayer", players_clean[i].playerId)
        end
    else
        Menu.addButton("Няма на кого да го дадете", "CloseMenu", nil)
    end
    Menu.addButton("Затваряне", "CloseMenu", nil)
end

function OpenNewPublicFormMenu()
    ClearMenu()
    for i=1, #DOCUMENT_FORMS["public"], 1 do
        Menu.addButton(DOCUMENT_FORMS["public"][i].headerTitle, "CreateNewForm", DOCUMENT_FORMS["public"][i])
    end
    Menu.addButton("Връщане", "OpenMainMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function OpenMyDocumentsMenu()
    ClearMenu()
    for i=#USER_DOCUMENTS, 1, -1 do
        local date_created = ""
        if USER_DOCUMENTS[i].data.headerDateCreated ~= nil then
            date_created = USER_DOCUMENTS[i].data.headerDateCreated .. " - "
        end
        Menu.addButton(date_created .. USER_DOCUMENTS[i].data.headerTitle, "OpenFormPropertiesMenu", USER_DOCUMENTS[i])
    end
	Menu.addButton("Връщане", "OpenMainMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function OpenNewJobFormMenu()
    ClearMenu()
    PlayerData = QBCore.Functions.GetPlayerData()
    if DOCUMENT_FORMS[PlayerData.job.name] ~= nil then

        for i=1, #DOCUMENT_FORMS[PlayerData.job.name], 1 do
            Menu.addButton(DOCUMENT_FORMS[PlayerData.job.name][i].headerTitle, "CreateNewForm", DOCUMENT_FORMS[PlayerData.job.name][i])
        end
    end
	Menu.addButton("Връщане", "OpenMainMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function OpenFormPropertiesMenu(aDocument)
    ClearMenu()
    Menu.addButton("Преглед", "ViewDocument", aDocument.data)
    Menu.addButton("Показване", "ShowToNearestPlayers", aDocument.data)
    Menu.addButton("Даване на копие", "CopyToNearestPlayers", aDocument.data)
    Menu.addButton("Унищожаване", "OpenDeleteFormMenu", aDocument)
    Menu.addButton("Връщане", "OpenMainMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function OpenDeleteFormMenu(aDocument)
    ClearMenu()
    Menu.addButton("Унищожаване", "DeleteDocument", aDocument)
    Menu.addButton("Връщане", "OpenMainMenu", nil)
    Menu.addButton("Затваряне", "CloseMenu", nil)
    Menu.hidden = false
end

function CloseMenu()
    ClearMenu()
    Menu.hidden = true
end

function DeleteDocument(aDocument)
    QBCore.Functions.TriggerCallback('nekvitupi-documents:deleteDocument', function (cb)
        if cb == true then
            for i=1, #USER_DOCUMENTS, 1 do
                if USER_DOCUMENTS[i].id == aDocument.id then
                    key_to_remove = i
                end
            end
            if key_to_remove ~= nil then
                table.remove(USER_DOCUMENTS, key_to_remove)
            end
            OpenMyDocumentsMenu()
        end
    end, aDocument.id)
end

function CreateNewForm(aDocument)
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.TriggerCallback('nekvitupi-documents:getPlayerDetails', function (cb_player_details)
        if cb_player_details ~= nil then
            print("Сървъра е направен от Бат Панда и Чичо Флоки")
            SetNuiFocus(true, true)
            aDocument.headerFirstName = PlayerData.charinfo.firstname
            aDocument.headerLastName = PlayerData.charinfo.lastname
            aDocument.headerDateOfBirth = PlayerData.charinfo.birthdate
            aDocument.headerJobLabel = PlayerData.job.name
            aDocument.headerJobGrade = PlayerData.charinfo.nationality
            aDocument.locale = Config.OSCommunityLocale
            SendNUIMessage({
                type = "createNewForm",
                data = aDocument
            })
        else
            print ("Сървъра е направен от Бат Панда и Чичо Флоки")
        end
    end, data)
end

function ShowDocument(aPlayer)
        print("Сървъра е направен от Бат Панда и Чичо Флоки")
        TriggerServerEvent('nekvitupi-documents:ShowToPlayer', aPlayer, CURRENT_DOCUMENT)
        CURRENT_DOCUMENT = nil
        CloseMenu()
end

RegisterNetEvent('nekvitupi-documents:viewDocument')
AddEventHandler('nekvitupi-documents:viewDocument', function( data )
    ViewDocument(data)
end)

function ViewDocument(aDocument)
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "ShowDocument",
        data = aDocument
    })
end

RegisterNetEvent('nekvitupi-documents:copyForm')
AddEventHandler('nekvitupi-documents:copyForm', function(db_form)
    print("Сървъра е направен от Бат Панда и Чичо Флоки")
    table.insert(USER_DOCUMENTS, db_form)
    OpenFormPropertiesMenu(db_form)
end)

function GetAllUserForms()
    QBCore.Functions.TriggerCallback('nekvitupi-documents:getPlayerDocuments', function (cb_forms)
        if cb_forms ~= nil then
            print("Сървъра е направен от Бат Панда и Чичо Флоки")
            USER_DOCUMENTS = cb_forms
        else
            print("Сървъра е направен от Бат Панда и Чичо Флоки")
        end
    end, data)

end

RegisterNUICallback('form_close', function()
    SetNuiFocus(false, false)
end)

RegisterNUICallback('form_submit', function(data, cb)
    print("Сървъра е направен от Бат Панда и Чичо Флоки")
    CloseMenu()
    QBCore.Functions.TriggerCallback('nekvitupi-documents:submitDocument', function (cb_form)
        if cb_form ~= nil then
            print("Сървъра е направен от Бат Панда и Чичо Флоки")
            table.insert(USER_DOCUMENTS, cb_form)
            OpenFormPropertiesMenu(cb_form)
        else
            print("Сървъра е направен от Бат Панда и Чичо Флоки")
        end
    end, data)
    SetNuiFocus(false, false)
end)

function GetNeareastPlayers()
    local closestPlayers = QBCore.Functions.GetPlayersFromCoords()
    local closestDistance = -1
    local closestPlayer = -1
    local coords = GetEntityCoords(PlayerPedId())
    local players_clean = {}
    for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() then
            local pos = GetEntityCoords(GetPlayerPed(closestPlayers[i]))
            local distance = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, coords.x, coords.y, coords.z, true)
            if closestDistance == -1 or closestDistance > distance then
                for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() then
            found_players = true
            table.insert(players_clean, {playerName = GetPlayerName(closestPlayers[i]), playerId = GetPlayerServerId(closestPlayers[i])} )
        end
    end
            end
        end
    end
    return players_clean
end

print("Сървъра е направен от Бат Панда и Чичо Флоки")
print("Сървъра е направен от Бат Панда и Чичо Флоки")
print("Сървъра е направен от Бат Панда и Чичо Флоки")

--[[
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           
 !!!      KKKKKKKKK    KKKKKKK                     iiii                                                           !!!                                 000000000          999999999     555555555555555555     999999999     
!!:!!     K:::::::K    K:::::K                    i::::i                                                         !!:!!      ######     ######        00:::::::::00      99:::::::::99   5::::::::::::::::5   99:::::::::99   
!:::!     K:::::::K    K:::::K                     iiii                                                          !:::!      #::::#     #::::#      00:::::::::::::00  99:::::::::::::99 5::::::::::::::::5 99:::::::::::::99 
!:::!     K:::::::K   K::::::K                                                                                   !:::!      #::::#     #::::#     0:::::::000:::::::09::::::99999::::::95:::::5555555555559::::::99999::::::9
!:::!     KK::::::K  K:::::KKKrrrrr   rrrrrrrrr  iiiiiii     ssssssssss       ssssssssss       ssssssssss        !:::! ######::::######::::###### 0::::::0   0::::::09:::::9     9:::::95:::::5           9:::::9     9:::::9
!:::!       K:::::K K:::::K   r::::rrr:::::::::r i:::::i   ss::::::::::s    ss::::::::::s    ss::::::::::s       !:::! #::::::::::::::::::::::::# 0:::::0     0:::::09:::::9     9:::::95:::::5           9:::::9     9:::::9
!:::!       K::::::K:::::K    r:::::::::::::::::r i::::i ss:::::::::::::s ss:::::::::::::s ss:::::::::::::s      !:::! ######::::######::::###### 0:::::0     0:::::0 9:::::99999::::::95:::::5555555555   9:::::99999::::::9
!:::!       K:::::::::::K     rr::::::rrrrr::::::ri::::i s::::::ssss:::::ss::::::ssss:::::ss::::::ssss:::::s     !:::!      #::::#     #::::#      0:::::0 000 0:::::0  99::::::::::::::95:::::::::::::::5   99::::::::::::::9
!:::!       K:::::::::::K      r:::::r     r:::::ri::::i  s:::::s  ssssss  s:::::s  ssssss  s:::::s  ssssss      !:::!      #::::#     #::::#      0:::::0 000 0:::::0    99999::::::::9 555555555555:::::5    99999::::::::9 
!:::!       K::::::K:::::K     r:::::r     rrrrrrri::::i    s::::::s         s::::::s         s::::::s           !:::! ######::::######::::###### 0:::::0     0:::::0         9::::::9              5:::::5        9::::::9  
!!:!!       K:::::K K:::::K    r:::::r            i::::i       s::::::s         s::::::s         s::::::s        !!:!! #::::::::::::::::::::::::# 0:::::0     0:::::0        9::::::9               5:::::5       9::::::9   
 !!!      KK::::::K  K:::::KKK r:::::r            i::::i ssssss   s:::::s ssssss   s:::::s ssssss   s:::::s       !!!  ######::::######::::###### 0::::::0   0::::::0       9::::::9    5555555     5:::::5      9::::::9    
          K:::::::K   K::::::K r:::::r           i::::::is:::::ssss::::::ss:::::ssss::::::ss:::::ssss::::::s               #::::#     #::::#      0:::::::000:::::::0      9::::::9     5::::::55555::::::5     9::::::9     
 !!!      K:::::::K    K:::::K r:::::r           i::::::is::::::::::::::s s::::::::::::::s s::::::::::::::s       !!!      #::::#     #::::#       00:::::::::::::00      9::::::9       55:::::::::::::55     9::::::9      
!!!!!     K:::::::K    K:::::K r:::::r           i::::::i s:::::::::::ss   s:::::::::::ss   s:::::::::::ss       !!:!!     ######     ######         00:::::::::00       9::::::9          55:::::::::55      9::::::9       
 !!!      KKKKKKKKK    KKKKKKK rrrrrrr           iiiiiiii  sssssssssss      sssssssssss      sssssssssss          !!!                                 000000000        99999999             555555555       99999999   


! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959
! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959! Krisss !#0959


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

                                                                                          dddddddd                                                                                                          
LLLLLLLLLLL               iiii                                          iiii              d::::::d                           222222222222222     222222222222222     222222222222222     222222222222222    
L:::::::::L              i::::i                                        i::::i             d::::::d     ######    ######     2:::::::::::::::22  2:::::::::::::::22  2:::::::::::::::22  2:::::::::::::::22  
L:::::::::L               iiii                                          iiii              d::::::d     #::::#    #::::#     2::::::222222:::::2 2::::::222222:::::2 2::::::222222:::::2 2::::::222222:::::2 
LL:::::::LL                                                                               d:::::d      #::::#    #::::#     2222222     2:::::2 2222222     2:::::2 2222222     2:::::2 2222222     2:::::2 
  L:::::L               iiiiiii    qqqqqqqqq   qqqqquuuuuu    uuuuuu  iiiiiii     ddddddddd:::::d ######::::######::::######            2:::::2             2:::::2             2:::::2             2:::::2 
  L:::::L               i:::::i   q:::::::::qqq::::qu::::u    u::::u  i:::::i   dd::::::::::::::d #::::::::::::::::::::::::#            2:::::2             2:::::2             2:::::2             2:::::2 
  L:::::L                i::::i  q:::::::::::::::::qu::::u    u::::u   i::::i  d::::::::::::::::d ######::::######::::######         2222::::2           2222::::2           2222::::2           2222::::2  
  L:::::L                i::::i q::::::qqqqq::::::qqu::::u    u::::u   i::::i d:::::::ddddd:::::d      #::::#    #::::#         22222::::::22       22222::::::22       22222::::::22       22222::::::22   
  L:::::L                i::::i q:::::q     q:::::q u::::u    u::::u   i::::i d::::::d    d:::::d      #::::#    #::::#       22::::::::222       22::::::::222       22::::::::222       22::::::::222     
  L:::::L                i::::i q:::::q     q:::::q u::::u    u::::u   i::::i d:::::d     d:::::d ######::::######::::###### 2:::::22222         2:::::22222         2:::::22222         2:::::22222        
  L:::::L                i::::i q:::::q     q:::::q u::::u    u::::u   i::::i d:::::d     d:::::d #::::::::::::::::::::::::#2:::::2             2:::::2             2:::::2             2:::::2             
  L:::::L         LLLLLL i::::i q::::::q    q:::::q u:::::uuuu:::::u   i::::i d:::::d     d:::::d ######::::######::::######2:::::2             2:::::2             2:::::2             2:::::2             
LL:::::::LLLLLLLLL:::::Li::::::iq:::::::qqqqq:::::q u:::::::::::::::uui::::::id::::::ddddd::::::dd     #::::#    #::::#     2:::::2       2222222:::::2       2222222:::::2       2222222:::::2       222222
L::::::::::::::::::::::Li::::::i q::::::::::::::::q  u:::::::::::::::ui::::::i d:::::::::::::::::d     #::::#    #::::#     2::::::2222222:::::22::::::2222222:::::22::::::2222222:::::22::::::2222222:::::2
L::::::::::::::::::::::Li::::::i  qq::::::::::::::q   uu::::::::uu:::ui::::::i  d:::::::::ddd::::d     ######    ######     2::::::::::::::::::22::::::::::::::::::22::::::::::::::::::22::::::::::::::::::2
LLLLLLLLLLLLLLLLLLLLLLLLiiiiiiii    qqqqqqqq::::::q     uuuuuuuu  uuuuiiiiiiii   ddddddddd   ddddd                          22222222222222222222222222222222222222222222222222222222222222222222222222222222
                                            q:::::q                                                                                                                                                         
                                            q:::::q                                                                                                                                                         
                                           q:::::::q                                                                                                                                                        
                                           q:::::::q  
										   
										   
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222
Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222Liquid#2222


https://discord.gg/RKGDCWqb8b - real release 
https://discord.gg/RKGDCWqb8b - real release 
https://discord.gg/RKGDCWqb8b - real release  
https://discord.gg/RKGDCWqb8b - real release  
https://discord.gg/RKGDCWqb8b - real release 


]]