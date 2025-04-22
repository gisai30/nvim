local term_opts = { silent = true }
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- Exit to normal mode
vim.api.nvim_set_keymap('i', 'qq', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qi', '<ESC>wa', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qe', '<ESC>ei', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'ql', '<ESC>la', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qh', '<ESC>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'q,', '<ESC>la,', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qw', '<CR><ESC>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('i', 'qo', '<ESC>o', { noremap = true, silent = true })
-- use q like key
vim.api.nvim_set_keymap('i', 'q<Space>', 'q', { noremap = true, silent = true })

-- Exit to visual mode
vim.api.nvim_set_keymap('v', 'qq', '<ESC>', { noremap = true, silent = true })
-- Saving and exit

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qw', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dq', ':q!<CR>', { noremap = true, silent = true })

-- Go File
keymap.set('n', 'nf', 'gf')
-- Close buffer
keymap.set('n', '<leader>bd', ':bd<cr>')
keymap.set('n', '<leader>bq', ':bd!<cr>')

-- Open new Buffer + Alpha
keymap.set('n', '<leader>t', ':tabnew | :Alpha<CR>', opts)
keymap.set('n', '<leader>t', ':tabnew <bar> :Alpha<CR>', opts)
-- Delete backword
keymap.set('n', 'dw', 'vb"_d')

-- Open and Split vim
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

--Move windows
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sl', '<C-w>l')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

--Tree
-- vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle <CR>', opts)
-- vim.api.nvim_set_keymap('n', '<C-h>', ':NvimTreeToggle <CR>', opts)
vim.api.nvim_set_keymap('n', '<C-h>', ':NvimTreeFindFileToggle <CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lt', ':NvimTreeFindFileToggle <CR>', opts)

-- HOP key maps, jumps in lines
vim.api.nvim_set_keymap('n', '<leader>jw', ":HopPattern <cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>jcl', ":HopWordCurrentLine <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>jl', ":HopLineStart <CR>", opts)
-- vim.api.nvim_set_keymap('n', 'fl', "<cmd>lua require'hop'.hint_patterns()<cr>", `pts)

--Telescope
-- vim.api.nvim_set_keymap('n', '<leader>ff', ":Telescope find_files <CR>", opts)
-- vim.api.nvim_set_keymap('n', '<M-p>', ":Telescope find_files <CR>", opts)
-- vim.api.nvim_set_keymap('n', '<d-p>', ":Telescope find_files <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>p', ":Telescope find_files <CR>", opts)
-- vim.api.nvim_set_keymap('n', '<leader>fb', ":Telescope find_files <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>fb', ":Telescope buffers <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>s', ":Telescope current_buffer_fuzzy_find <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>ft', ":Telescope <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>fi', ":Telescope treesitter <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>o', ":Telescope oldfiles <CR>", opts)

--alpha
vim.api.nvim_set_keymap('n', '<leader>a', ':Alpha <CR>', opts)

-- OUTLINE
-- vim.api.nvim_set_keymap('n', '<C-l>', ':SymbolsOutline<cr>', opts)

-- Color theme
keymap.set('n', '<leader>z', ':Twilight <cr>', opts)

-- Lsp Saga
-- keymap.set('n', '<leader>ls', ':Lspsaga ', opts)

-- Scroll
keymap.set('n', 'G', 'Gzt')

