
fx_version 'cerulean'
games {'gta5'}

files {
  'audioconfig/ftypesound_game.dat151.rel',
	'audioconfig/ftypesound_sounds.dat54.rel',
	'sfx/dlc_ftypesound/ftypesound.awc',
	'sfx/dlc_ftypesound/ftypesound_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/ftypesound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/ftypesound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_ftypesound'

client_script {
    'vehicle_names.lua'
}