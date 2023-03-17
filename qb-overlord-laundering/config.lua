QBCore = exports['qb-core']:GetCoreObject() -- do not touch


CONFIG = {} -- do not touch

CONFIG['BaseTime'] = 1 -- time in minutes the washing machine always takes
--CONFIG['BaseTime'] = 1

CONFIG['TimePerItem'] = 0 -- time in minutes each additional item of dirty money adds
--CONFIG['TimePerItem'] = 1

CONFIG['PoliceIncrease'] = 0.00 -- percentage to increase per officer around

CONFIG['Machines'] = {
	{name="Washing Machine", cost="4500", perc=0.7, vec=vector3(-1149.29, -1459.27, -3.73), available=true, finished=false, player=0, worth=0, lastsound=0},
}