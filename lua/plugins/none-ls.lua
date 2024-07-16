return {
	"jay-babu/mason-null-ls.nvim",
  lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason-null-ls").setup({
			automatic_installation = true,
			ensure_installed = {
				"stylua",
				"prettier",
				"black",
				"mypy",
				"ruff",
			},
			handlers = {},
		})
	end,
}
