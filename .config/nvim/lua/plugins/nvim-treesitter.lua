return {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "markdown", "javascript", "html", "css", "typescript", "java", "python", "cpp"},
              highlight = {
    enable = true,              -- включить подсветку
    disable = {},               -- можно добавить типы файлов, для которых отключить подсветку
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- выбрать начальный узел
      node_incremental = "grn", -- увеличивать узел
      scope_incremental = "grc", -- увеличивать область
      node_decremental = "grm", -- уменьшать узел
    },
  },
sync = false,        -- Отключаем синхронное выполнение
  context_commentstring = {
    enable = true,
  },
        }
    end
}
