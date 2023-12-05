-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.termguicolors  = true
vim.opt.shiftround     = true
vim.opt.updatetime     = 100
vim.opt.cursorline     = true
vim.opt.autowrite      = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end
-- tabs
vim.opt.autoindent    = true
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.softtabstop   = 4
vim.opt.mouse         = 'a'
vim.opt.expandtab     = true
vim.opt.autowrite     = false
vim.opt.formatoptions = ''

require("core.keymaps")
--require("core.dvorak")	-- delete this line if you don't like using DVORAK
require("core.plugins")
require("core.gui")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1

-- leetcode configs
vim.g.leetcode_browser           = 'chrome'
vim.g.python3_host_prog          = '/usr/local/bin/python3'
vim.g.leetcode_solution_filetype = 'golang'

-- copilot configs
-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_filetypes = {
--     ["*"] = false,
--     ["javascript"] = true,
--     ["typescript"] = true,
--     ["typescriptreact"] = true,
--     ["css"] = true,
--     ["lua"] = true,
--     ["rust"] = true,
--     ["c"] = true,
--     ["c#"] = true,
--     ["c++"] = true,
--     ["go"] = true,
--     ["python"] = true,
-- }

require("core.theme")

require("nvim-autopairs").setup()
require('go').setup()
require('hop').setup()

-- Load plugin configs
-- plugins without extra configs are configured directly here
require("impatient")
--require('satellite').setup()

require("configs.autocomplete").config()
require("configs.symbols_outline").config()
require("configs.statusline").config()
require("configs.filetree").config()
require("configs.treesitter").config()
require("configs.startscreen").config()
require("configs.git").config()
require("configs.bufferline").config()
require("configs.grammar").config()
require("configs.terminal").config()
require("configs.formatter").config()
require("configs.languages").config()
require("configs.todo").config()
