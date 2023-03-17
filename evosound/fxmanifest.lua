
fx_version 'cerulean'
games {'gta5'}

files {
  'audioconfig/n4g63t_game.dat151.rel',
  'audioconfig/n4g63t_sounds.dat54.rel',
  'sfx/dlc_n4g63t/n4g63t.awc',
  'sfx/dlc_n4g63t/n4g63t_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/n4g63t_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/n4g63t_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_n4g63t'

client_script {
    'vehicle_names.lua'
}