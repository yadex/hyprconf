--override color
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string


	palette_overrides = {
		dark1 = "#282828",
		bright_red = "#ea6962",
		bright_green = "#a9b665",
		bright_yellow = "#d8a657",
		bright_blue = "#7daea3",
		bright_purple = "#d3869b",
		bright_aqua = "#89b482",
		bright_orange = "#e78a4e",
	},
	overrides = {
		SignColumn = {bg = "#282828"},
		Pmenu = {bg = "#282828"},
	}
})



vim.cmd("colorscheme gruvbox")
vim.cmd([[highlight Cursorline guibg=#3c3836]])
