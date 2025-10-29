return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
  -- stylua: ignore
  keys = {
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	},
	{
		"oskarrrrrrr/symbols.nvim",
		event = "VeryLazy",
		config = function()
			local r = require("symbols.recipes")
			require("symbols").setup(r.DefaultFilters, {
				sidebar = {},
			})
			vim.keymap.set("n", ",s", "<cmd>Symbols<CR>")
			vim.keymap.set("n", ",S", "<cmd>SymbolsClose<CR>")
		end,
	},
	{
		{
			"francescarpi/buffon.nvim",
			branch = "main",
			---@type BuffonConfig
			opts = {},
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"nvim-lua/plenary.nvim",
			},
		},
	},
}
