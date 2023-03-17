
fx_version 'bodacious'

game 'gta5'

version '2.0.8'

lua54 'yes'

ui_page "html/index.html"

shared_scripts {
	'utils/callback.lua',
	'utils/rpc.lua',
	'utils/utils.lua',
}

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',

	'config/config.lua',
	'config/config_framework.lua',
	'client/functions_framework.lua',
	'config/config_controls.lua',
	'config/config_interiors.lua',
	'config/config_garage.lua',
	'config/config_furniture.lua',
	'config/translations.lua',
	'client/cam.lua',
	'client/functions.lua',
	'client/main.lua',
	'client/inventory_clothes.lua',
	'client/menus.lua',
	'config/config_client.lua',
	'client/gui.lua',
	'client/decorate.lua',
	'client/offset.lua',
	
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config/config.lua',
	'config/config_framework.lua',
	'server/functions_framework.lua',
	'config/config_controls.lua',
	'config/config_interiors.lua',
	'config/config_furniture.lua',
	'config/config_garage.lua',
	'config/translations.lua',
	'server/main.lua',
	'config/config_server.lua',
	'config/config_discord.lua',
	'server/version_check.lua',
}

files {
	'html/index.html',
	'html/reset.css',
	'html/style.css',
	'html/script.js',
	'config/translations.js',
	'html/img/*.png',
	'html/img/build-menu/*.png',
	'html/img/build-menu/Interior/*.png',
	'html/img/build-menu/Interior/bathroom/*.png',
	'html/img/build-menu/Interior/bedroom/*.png',
	'html/img/build-menu/Interior/kitchen/*.png',
	'html/img/build-menu/Interior/living-room/*.png',
}

escrow_ignore {
	'config/config.lua',
	'config/config_framework.lua',
	'config/config_discord.lua',
	'config/config_garage.lua',
	'config/config_furniture.lua',
	'config/config_client.lua',
	'config/config_server.lua',
	'config/config_interiors.lua',
	'config/config_controls.lua',
	'config/translations.lua',
    'server/version_check.lua',
}

server_export {
	'hasKey',
	"CallRemoteMethod",
    "RegisterMethod",
}

exports {
    "CallRemoteMethod",
    "RegisterMethod",
}

dependencies {
	'/server:4752', -- ⚠️PLEASE READ⚠️ This requires at least server build 4752 or higher
	'PolyZone',
	'meta_libs',
	--'interact-sound', -- Optional if you want to use the sounds from the housing
	--'lockpick',
	--'skillbar',
}
dependency '/assetpacks'