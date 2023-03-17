fx_version 'cerulean'
games {'gta5'}

files {
  'audioconfig/porsche57v10_game.dat151.rel',
  'audioconfig/porsche57v10_sounds.dat54.rel',
  'sfx/dlc_porsche57v10/porsche57v10.awc',
  'sfx/dlc_porsche57v10/porsche57v10_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/porsche57v10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/porsche57v10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_porsche57v10'

client_script {
    'vehicle_names.lua'
}