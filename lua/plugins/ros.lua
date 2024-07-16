return {
	{
		"ErickKramer/nvim-ros2",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			-- Add any custom options here
			autocmds = true,
			telescope = true,
			treesitter = true,
		},
		config = function()
			vim.keymap.set("n", "<leader>li", ":Telescope ros2 interfaces<CR>", { desc = "[ROS 2]: List interfaces" })
			vim.keymap.set("n", "<leader>ln", ":Telescope ros2 nodes<CR>", { desc = "[ROS 2]: List nodes" })
			vim.keymap.set("n", "<leader>la", ":Telescope ros2 actions<CR>", { desc = "[ROS 2]: List actions" })
			vim.keymap.set("n", "<leader>lt", ":Telescope ros2 topics<CR>", { desc = "[ROS 2]: List topics" })
			vim.keymap.set("n", "<leader>ls", ":Telescope ros2 services<CR>", { desc = "[ROS 2]: List services" })
		end,
	},
}
