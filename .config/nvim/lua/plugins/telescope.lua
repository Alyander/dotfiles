return {
    'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<leader>q"] = actions.close, -- закрыть в режиме insert
          },
          n = {
            ["<leader>q"] = actions.close, -- закрыть в normal режиме
          },
        },
      },
    })
  end,
    }
