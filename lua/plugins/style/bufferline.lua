return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "ColorScheme",
	config = function()
		require("bufferline").setup({
			options = {
				buffer_close_icon = "",
				separator_style = "thin",
			},
		})
	end,
}
