local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " "
require("lazy").setup({
	"sainnhe/gruvbox-material",
  "ellisonleao/gruvbox.nvim",
	"ap/vim-css-color",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	-- "hrsh7th/cmp-cmdline",
	"hrsh7th/vim-vsnip",
	"nvim-lualine/lualine.nvim",
	"ibhagwan/fzf-lua",
	"nvim-tree/nvim-web-devicons",
	"folke/noice.nvim",
	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",
	"uga-rosa/ccc.nvim",
})
