return {
	"nvim-tree/nvim-tree.lua",
	lazy = true,
	cmd = "NvimTreeToggle",
	dependencies = {
		"nvim-tree/nvim-tree.lua",
	},
	config = function()
		require("nvim-tree").setup()
	end,
}
