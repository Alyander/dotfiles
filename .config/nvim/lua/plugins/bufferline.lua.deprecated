return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        if not os.getenv("TMUX") then
            local bufferline = require("bufferline")

            bufferline.setup({
                options = {
                    style_preset = {
                        bufferline.style_preset.no_italic,
                        bufferline.style_preset.no_bold,
                    },
                    always_show_bufferline = false,
                },
            })
        end
    end,
}

