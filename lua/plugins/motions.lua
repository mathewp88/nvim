return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = true,
		event = "VimEnter",
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			vim.keymap.set("n", "<leader>hh", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<leader>h", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<leader>hf", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<leader>hd", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<leader>hs", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():select(4)
			end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<leader>hp", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<leader>hn", function()
				harpoon:list():next()
			end)
		end,
	},
}
