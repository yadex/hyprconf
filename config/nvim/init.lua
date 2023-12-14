-- packages
require("lazynvim")
require("plugins/nvimcmp-setup")
require("plugins/lsp-setup")
require("plugins/lualine-setup")
require("plugins/noice-setup")
require("plugins/color-pick")
require("plugins/gruvbox-setup")


-- basic setup
local set = vim.opt
set.tabstop=2
set.softtabstop=2
set.shiftwidth=2
set.number = true
set.relativenumber = true
set.backup = false
set.swapfile = false
set.clipboard="unnamedplus"
set.cursorline = true
set.shortmess="atI"
-- set.cmdheight=0





-- keymap setup
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-x><c-f>', builtin.find_files, {})
vim.keymap.set('n', '<c-x><c-g>', builtin.live_grep, {})
vim.keymap.set('n', '<c-x><c-b>', builtin.buffers, {})
vim.keymap.set('n', '<c-x><c-h>', builtin.help_tags, {})
 --neotree
 vim.keymap.set("n", "<c-y>", "<cmd>Neotree float toggle<CR>")
 require("neo-tree").setup({
    popup_border_style = "rounded"
})


--neovide
if vim.g.neovide then
	 vim.o.guifont = "monospace:h21"
end

