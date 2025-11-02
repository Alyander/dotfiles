return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline_popup", -- используем всплывающее окно
    },
    views = {
      cmdline_popup = {
        position = {
          row = "80%",  -- позиция по вертикали (внизу)
          col = "50%",   -- по центру горизонтально
        },
        size = {
          width = 60,
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
    },
    presets = {
      bottom_search = false, -- выключаем, чтобы не мешало
      command_palette = false,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}

