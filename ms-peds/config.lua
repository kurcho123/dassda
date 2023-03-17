Config = {}

Config.Invincible = true -- Is the ped going to be invincible?
Config.Frozen = true -- Is the ped frozen in place?
Config.Stoic = true -- Will the ped react to events around them?
Config.FadeIn = true -- Will the ped fade in and out based on the distance. (Looks a lot better.)
Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)

Config.MinusOne = true -- Leave this enabled if your coordinates grabber does not -1 from the player coords.

Config.GenderNumbers = { -- No reason to touch these.
	['male'] = 4,
	['female'] = 5
}

Config.PedList = {
-- Paintball Arena Start
    {
	    model = `csb_mp_agent14`,
	    coords = vector4(-246.35, -2034.06, 29.95, 230.34), 
	    gender = 'male',
	    scenario = 'WORLD_HUMAN_CLIPBOARD',
    },
}
