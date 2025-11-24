------------------------------------------------------------
-- SETTINGS / UTILS
------------------------------------------------------------
local map  = vim.keymap.set
local opts = { noremap = true, silent = true }

------------------------------------------------------------
-- TELESCOPE
------------------------------------------------------------
local telescope = require('telescope.builtin')

map('n', '<leader>ff', telescope.find_files,      { desc = 'Telescope: find files' })
map('n', '<leader>fg', telescope.live_grep,       { desc = 'Telescope: live grep' })
map('n', '<leader>fb', telescope.buffers,         { desc = 'Telescope: buffers' })
map('n', '<leader>fh', telescope.help_tags,       { desc = 'Telescope: help tags' })
map('n', '<leader>er', telescope.diagnostics,     { desc = 'Telescope: diagnostics' })
map('n', '<leader>df', telescope.lsp_definitions, { desc = 'Telescope: LSP definitions' })
------------------------------------------------------------
-- NEOTREE
------------------------------------------------------------
map('n', '<leader>ee', "<cmd>Neotree float source=filesystem toggle<cr>",
    { desc = 'Neotree: filesystem' })

map('n', '<leader>ge', "<cmd>Neotree float git_status toggle<cr>",
    { desc = 'Neotree: git status' })


------------------------------------------------------------
-- BUFFERLINE
------------------------------------------------------------
map('n', '<A-1>', "<cmd>BufferLineGoToBuffer 1<cr>", opts)
map('n', '<A-2>', "<cmd>BufferLineGoToBuffer 2<cr>", opts)
map('n', '<A-3>', "<cmd>BufferLineGoToBuffer 3<cr>", opts)
map('n', '<A-4>', "<cmd>BufferLineGoToBuffer 4<cr>", opts)
map('n', '<A-5>', "<cmd>BufferLineGoToBuffer 5<cr>", opts)
map('n', '<A-6>', "<cmd>BufferLineGoToBuffer 6<cr>", opts)
map('n', '<A-7>', "<cmd>BufferLineGoToBuffer 7<cr>", opts)
map('n', '<A-8>', "<cmd>BufferLineGoToBuffer 8<cr>", opts)
map('n', '<A-9>', "<cmd>BufferLineGoToBuffer 9<cr>", opts)
map('n', '<A-c>', "<cmd>bdelete!<cr>", opts)
------------------------------------------------------------
-- LSP / CODE ACTIONS
------------------------------------------------------------
map('n', '<leader>aa', function()
    require("tiny-code-action").code_action()
end, { noremap = true, silent = true })

------------------------------------------------------------
-- MARKDOWN PREVIEW
------------------------------------------------------------
map('n', '<leader>mm', "<Cmd>MarkdownPreviewToggle<CR>", { desc = 'Markdown Preview' })

------------------------------------------------------------
-- DEBUGGING (DAP)
------------------------------------------------------------
map('n', '<leader>tb', "<Cmd>DapToggleBreakpoint<CR>", { desc = "DAP: toggle breakpoint" })
map('n', '<leader>dc', "<Cmd>DapContinue<CR>",         { desc = "DAP: continue/start" })

------------------------------------------------------------
-- TERMINAL
------------------------------------------------------------
map('n', '<leader>tt',"<cmd>terminal<cr>", opts)
map('t', '<Esc>', "<C-\\><C-n>", opts)

------------------------------------------------------------
-- WINDOW MANAGEMENT
------------------------------------------------------------

-- navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- splits
map('n', 'ss', ':split<CR>',  opts)
map('n', 'sv', ':vsplit<CR>', opts)

-- close / focus
map('n', 'sc', '<C-w>c', opts)
map('n', 'so', '<C-w>o', opts)

-- resize
map('n', '<C-Up>',    ':resize +2<CR>',           opts)
map('n', '<C-Down>',  ':resize -2<CR>',           opts)
map('n', '<C-Left>',  ':vertical resize -2<CR>',  opts)
map('n', '<C-Right>', ':vertical resize +2<CR>',  opts)

-- alternative tmux-like resize
map('n', '<A-h>', '<C-w><', opts)
map('n', '<A-l>', '<C-w>>', opts)
map('n', '<A-j>', '<C-w>+', opts)
map('n', '<A-k>', '<C-w>-', opts)

-- move windows (swap)
map('n', '<leader>wh', '<C-w>H', opts)
map('n', '<leader>wj', '<C-w>J', opts)
map('n', '<leader>wk', '<C-w>K', opts)
map('n', '<leader>wl', '<C-w>L', opts)

------------------------------------------------------------
-- END OF CONFIG
------------------------------------------------------------

