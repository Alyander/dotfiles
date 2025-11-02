return {
    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.nord_italic = false
            require('nord').set()
        end,
    },
    {
    	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
	    lazy = false,
	    priority = 999,
	    config = function()
		    require('lualine').setup()
	    end,
    },
}
