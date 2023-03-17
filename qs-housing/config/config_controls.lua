Config = Config or {}

--░█████╗░░█████╗░███╗░░██╗████████╗██████╗░░█████╗░██╗░░░░░░██████╗
--██╔══██╗██╔══██╗████╗░██║╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██╔════╝
--██║░░╚═╝██║░░██║██╔██╗██║░░░██║░░░██████╔╝██║░░██║██║░░░░░╚█████╗░
--██║░░██╗██║░░██║██║╚████║░░░██║░░░██╔══██╗██║░░██║██║░░░░░░╚═══██╗
--█████╔╝╚█████╔╝██║░╚███║░░░██║░░░██║░░██║╚█████╔╝███████╗██████╔╝
--░╚════╝░░╚════╝░╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚══════╝╚═════╝░

--Here you can see all the available Keys.
Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["ENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

--Basic Menu controls.
Config.KeyHouseMenuMlo = "F5" -- Key to open the house menu inside your mlo.
Config.KeyHouseMenuRealEstate = "F6" -- Key to open the house realestate menu.

--Basic DrawText3D controls.
Config.Keys = {
    EnterHouse = "E",
    LeaveHouse = "E",
    ViewHouse = "E",
    ViewHouse_job = "G",
    VisitHouse = "H",
    ExitViewHouse = "H",
    FrontDoorCam = "H",
    RequestRing = "E",
    OpenHouseMenu = "G",
    OpenStash = "E",
    OpenClotheMenu = "E",
    SetWardrobe = "E",
    SetStash = "E",
    SetCharger = "E",
    SetLogout = "E",
    StoreVehicle = "E",
    OpenGarage = "E",
    Doorlock = "E",
}

--Decoration controls, remember to change it in the visual html guide too.
DecorateControls = {
    SetNuiFocus = "F5",
    RotateActive = "F3",
    ConfirmOption = "ENTER",
    CameraMovementW = "W",
    CameraMovementA = "A",
    CameraMovementS = "S",
    CameraMovementD = "D",
    MovementObjTop = "TOP",
    MovementObjDown = "DOWN",
    MovementObjLeft = "LEFT",
    MovementObjRight = "RIGHT",
    MovementObjPageUp = "PAGEUP",
    MovementObjPageDown = "PAGEDOWN",
    PlaceObjectOnGround = "LEFTALT",
    CheckMovementInput = "LEFTSHIFT",
}

--Do you want to enable keys in decoration mode?
function DisableControls()
    DisableAllControlActions(0)
    EnableControlAction(0, Keys["W"], true)
    EnableControlAction(0, Keys["S"], true)
    EnableControlAction(0, Keys["T"], true)
    EnableControlAction(0, Keys["LEFTSHIFT"], true)
    EnableControlAction(0, Keys["LEFTALT"], true)
    EnableControlAction(0, Keys["F1"], true)
    EnableControlAction(0, Keys["F2"], true)
    EnableControlAction(0, Keys["F3"], true)
    EnableControlAction(0, Keys["ENTER"], true)
    EnableControlAction(0, Keys["LEFT"], true)
    EnableControlAction(0, Keys["RIGHT"], true)
    EnableControlAction(0, Keys["TOP"], true)
    EnableControlAction(0, Keys["DOWN"], true)
    EnableControlAction(0, Keys["PAGEUP"], true)
    EnableControlAction(0, Keys["PAGEDOWN"], true)
    EnableControlAction(0, Keys["BACKSPACE"], true)
end

--Here you can modify the controls/translations of the Action Cam.
ActionControls = {
    forward = {
      label = "Forward +/-",
      codes = {33,32}
    },
    right = {
      label = "Right +/-",
      codes = {35,34}
    },
    up = {
      label = "Up +/-",
      codes = {52,51}
    },
    add_point = {
      label = "Add Point",
      codes = {24}
    },
    undo_point = {
      label = "Undo Last",
      codes = {25}
    },
    set_position = {
      label = "Set Position",
      codes = {24}
    },
    add_garage = {
      label = "Add Garage",
      codes = {24}
    },
    rotate_z = {
      label = "RotateZ +/-",
      codes = {20,73}
    },
    rotate_z_scroll = {
      label = "RotateZ +/-",
      codes = {17,16}
    },
    increase_z = {
      label = "Z Boundary +/-",
      codes = {180,181}
    },
    decrease_z = {
      label = "Z Boundary +/-",
      codes = {21,180,181}
    },
    change_shell = {
      label = "Next Shell Model",
      codes = {217}
    },
    done = {
      label = "Done",
      codes = {194}
    },
    change_player = {
      label = "Player +/-",
      codes = {82,81}
    },
    select_player = {
      label = "Select Player",
      codes = {191}
    },
    cancel = {
      label = "Cancel",
      codes = {252}
    },
    change_outfit = {
      label = "Outfit +/-",
      codes = {82,81}
    },
    delete_outfit = {
      label = "Delete Outfit",
      codes = {178}
    },
    select_vehicle = {
      label = "Vehicle +/-",
      codes = {82,81}
    },
    spawn_vehicle = {
      label = "Spawn Vehicle",
      codes = {191}
    },
    testPos = {
      label = "Visitor entrance",
      codes = {47}
    },
}