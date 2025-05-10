return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "python", "lua", "javascript", "c", "cpp", "rust" }, -- Устанавливаем все поддерживаемые языки
			highlight = {
				enable = true, -- Включаем подсветку синтаксиса
				additional_vim_regex_highlighting = true, -- Для языков, не поддерживающих treesitter
			},
			indent = {
				enable = true, -- Включаем автоматическое отступление
			},
			incremental_selection = {
				enable = true, -- Включаем выделение блоков кода
				keymaps = {
					init_selection = "gnn", -- Начать выделение
					node_incremental = "grn", -- Увеличить выделение
					scope_incremental = "grc", -- Увеличить выделение на уровень
					node_decremental = "grm", -- Уменьшить выделение
				},
			},
		})
	end,
}
