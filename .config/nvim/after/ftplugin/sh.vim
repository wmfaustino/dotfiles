lua <<EOF
--[[ --------------------------------------------------------------------------
-    _     
 ___| |__  
/ __| '_ \ 
\__ \ | | |
|___/_| |_|
_                                _       _
-----------------------------------------------------------------------------]]

--[[ --- filetype options -------------------------------------------------- ]]
local lang = 'sh'

--[[ --- config method ----------------------------------------------------- ]]
local config_filetype = utils.Filetype.config
config_filetype(lang)
EOF

