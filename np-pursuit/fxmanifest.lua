
fx_version 'cerulean'
game 'gta5'

files {
  'vehiclelayouts.meta',
  'handling.meta',
  'vehicles.meta',
  'carcols.meta',
  'carvariations.meta',
  'sfx/dlc_argento/argento.awc',
  'sfx/dlc_argento/argento_npc.awc',
  'audioconfig/argento_game.dat151.rel',
  'audioconfig/argento_sounds.dat54.rel',
}

data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'AUDIO_GAMEDATA' 'audioconfig/argento_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/argento_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_argento'



client_script 'vehicle_names.lua'
