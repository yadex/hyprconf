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
	--theme
	"ellisonleao/gruvbox.nvim",
--	"luisiacc/gruvbox-baby",
	"ap/vim-css-color",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	--"hrsh7th/cmp-cmdline",
	"hrsh7th/vim-vsnip",
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-web-devicons",
	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",
	"uga-rosa/ccc.nvim",
	--treesetter
	"nvim-treesitter/nvim-treesitter",
	--fzf search
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	--neovim tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},
	--noice
	"folke/noice.nvim",
	"MunifTanjim/nui.nvim",
--	"rcarriga/nvim-notify",
})
