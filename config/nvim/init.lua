-- packages
require("lazynvim")
require("plugins/nvimcmp-setup")
require("plugins/lsp-setup")
require("plugins/fzf-setup")
require("plugins/lualine-setup")
require("plugins/noice-setup")
require("plugins/color-pick")


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


-- theme
set.background = "dark"
vim.cmd([[colorscheme gruvbox-material]])
-- vim.cmd([[colorscheme gruvbox]])
set.termguicolors = true
vim.cmd([[au VimEnter * highlight MatchParen ctermfg=green guibg=green]]) 



-- keymap setup
vim.keymap.set("n", "<c-f>",
"<cmd>lua require('fzf-lua').lines()<CR>", { silent = true })
vim.keymap.set("n", "<c-b>",
"<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })
vim.keymap.set({ "n", "v", "i" }, "<C-x><C-f>",
  function() require("fzf-lua").complete_path() end,
  { silent = true, desc = "Fuzzy complete path" })

