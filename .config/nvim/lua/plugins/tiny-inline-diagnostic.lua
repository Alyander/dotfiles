return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        require("tiny-inline-diagnostic").setup({
            preset = "minimal",
            transparent_bg = false,
            transparent_cursorline = true
        })
        vim.diagnostic.config({ virtual_text = true })-- Disable Neovim's default virtual text diagnostics
    end,
}
