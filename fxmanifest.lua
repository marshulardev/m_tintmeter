fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

author 'marshular & NAT2K15'
description 'Tint meter script, made with love.'

files {
   'locales/*.json',
   'data/tints.lua',
   'web/*',
   'web/image/*'
}

client_scripts {
   '@ox_lib/init.lua',
   'client/main.lua'
}

ui_page 'web/index.html'