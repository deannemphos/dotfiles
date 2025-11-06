require("config.lazy")

local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "simonmclean/triptych.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{ "stevearc/dressing.nvim" },
	{
		"nvim-flutter/flutter-tools.nvim",
		name = "flutter-tools",
		dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
		config = true,
	},
}

-- local plugins = {

--	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
-- { "nvim-flutter/flutter-tools.nvim", name = "flutter-tools", lazy = false, dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim", }, config = true,}
-- }

--require nvim-tree for left hand file explorer
--opens with :NvimTreeToggle
-- require("nvim-tree").setup()

-- require flutter tools
-- no clue if this will work
-- -- Spoiler: it didn't
-- require("flutter-tools").setup({}) -- use defaults

require("plenary")
-- require("dressing")
require("flutter-tools").setup({})
-- require("flutter-tools").setup({ dir = "C:/Users/deann/AppData/local/nvim/lua/plugins" })

-- require("plugins/triptych").setup({})
-- for tiling windows, will get around to this eventually

--require catppuccin
require("catppuccin").setup()
require("config.lazy")

--set the colorscheme to it!
vim.cmd.colorscheme("catppuccin-macchiato")
