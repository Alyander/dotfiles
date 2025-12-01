return {
	{
		cmd = { "Mason", "MasonUpdate", "MasonInstall" },
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "ts_ls", "emmet_language_server", "tailwindcss", "clangd"},
			})
		end,
	},
}
