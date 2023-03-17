

-- security created by Fishing Russia
Config.DoorList['security-security'] = {
    doorLabel = 'security',
    doorType = 'double',
    doorRate = 1.0,
    locked = true,
    doors = {
        {objName = -1922281023, objYaw = 115.49955749512, objCoords = vec3(-699.655944, 271.888642, 83.414962)},
        {objName = -1922281023, objYaw = 295.49960327148, objCoords = vec3(-698.747864, 269.975982, 83.414628)}
    },
    distance = 2,
    authorizedJobs = { ['security'] = 0 },
}

-- security2 created by Fishing Russia
Config.DoorList['security-security2'] = {
    objName = 1901183774,
    doorType = 'door',
    fixText = false,
    pickable = true,
    objCoords = vec3(-713.923156, 264.462982, 84.194962),
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['security'] = 0 },
    objYaw = 295.29959106446,
    distance = 2,
    doorLabel = 'security2',
}