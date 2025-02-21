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

		-- Autoformat on save/root
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		require("null-ls").setup({
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})
	end,
}
