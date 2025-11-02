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
				ensure_installed = { "lua_ls", "pyright", "ts_ls", "emmet_ls", "jdtls" },
			})
		end,
	},
	{
		dependencies = {
			"mfussenegger/nvim-lint",
		},
		"rshkarin/mason-nvim-lint",
		config = function()
			require("mason-nvim-lint").setup({
				-- ensure_installed = { "cpplint", "eslint_d", "ruff", "checkstyle" },
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			require("mason-nvim-dap").setup({
				-- ensure_installed = { "javadbg", "debugpy", "cppdbg" },
				handlers = {},
			})
		end,
	},
	{
		"LittleEndianRoot/mason-conform",
		config = function()
			require("mason-conform").setup({
				-- ensure_installed = { "stylua", "prettier", "clang-format" },
			})
		end,
	},
}
