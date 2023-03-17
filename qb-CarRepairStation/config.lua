Config = {}
Config.Locale = 'en' --en, tw

Config.RepairTime = 20000
Config.EnableSoundEffect = true
Config.Blips = true

-- if you want repair for free, set cost to false
Config.Stations = {
	{x = 848.12, y = -2123.51, z = 30.54, cost = 3000},
    {x = 448.81, y = -977.67, z = 25.7, cost = false}  
}

-- Locale function from es_extended: https://github.com/esx-framework/esx-legacy/blob/main/%5Besx%5D/es_extended/locale.lua
Locales = {}

function _(str, ...)  -- Translate string

	if Locales[Config.Locale] ~= nil then

		if Locales[Config.Locale][str] ~= nil then
			return string.format(Locales[Config.Locale][str], ...)
		else
			return 'Translation [' .. Config.Locale .. '][' .. str .. '] does not exist'
		end

	else
		return 'Locale [' .. Config.Locale .. '] does not exist'
	end

end

function _U(str, ...) -- Translate string first char uppercase
	return tostring(_(str, ...):gsub("^%l", string.upper))
end