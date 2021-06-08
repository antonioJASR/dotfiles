

-- vim.g.dashboard_custom_header = {
--   [[
--   _       _                           _                
--  | |     | |                         | |               
--  | |__   | |   ___     __ _        __| |   ___  __   __
--  | '_ \  | |  / _ \   / _` |      / _` |  / _ \ \ \ / /
--  | |_) | | | | (_) | | (_| |  _  | (_| | |  __/  \ V / 
--  |_.__/  |_|  \___/   \__, | (_)  \__,_|  \___|   \_/  
--                          | |                           
--                          |_|                           
-- ]]
-- }

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    e = {description = {'  Settings           '}, command = ':e ~/.config/nvim/init.vim'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

