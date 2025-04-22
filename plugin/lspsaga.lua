local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
	lightbulb = {
        enable = false,  -- true/false para activar/desactivar
        enable_in_insert = true,  -- mostrar en modo insert
        sign = false,  -- mostrar el signo en la columna de signos
        sign_priority = 40,
        virtual_text = true,  -- mostrar texto virtual
        -- Cambiar el ícono de la bombilla
        sign = {
            text = "💡",  -- puedes usar otros símbolos como "💡" o "⚡"
            hl = "LspSagaLightBulb"  -- highlight group
        }
    },
	-- ui = {
	-- 	enable = false,
	-- 	sign  = false,
	-- 	code_action = ''
	-- },
	-- show outline
	show_outline        = {
		win_position = 'right',
		--set special filetype win that outline window split.like NvimTree neotree
		-- defx, db_ui
		win_with = '',
		win_width = 30,
		auto_enter = true,
		auto_preview = true,
		virt_text = '┃',
		jump_key = 'o',
		-- auto refresh when change buffer
		auto_refresh = true,
	},
	server_filetype_map = {},
	-- custom_kind         = {
	-- 	Field = '#000000'
	-- },
	code_action_keys    = {
		tabe = 'l'
	},
	finder_action_keys  = {
		tabe = 'l'
	},

	border_style = 'plus'
}

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<leader>ls', ':Lspsaga ', opts)
keymap('n', '<C-j>', ':Lspsaga diagnostic_jump_next<cr>', opts)
keymap('n', 'K', ':Lspsaga hover_doc<cr>', opts)
-- keymap('n', 'nd', ':Lspsaga lsp_finder<cr>', opts)
keymap('n', '<C-k>', ':Lspsaga diagnostic_jump_prev<cr>', opts)
-- keymap('n', 'np', ':Lspsaga preview_definition<cr>', opts)
keymap('n', '<leader>lsr', ':Lspsaga rename<cr>', opts)
keymap('n', '<C-l>', ':Lspsaga outline<cr>', opts)
-- keymap('n', '<C-l>', ':LSoutlineToggle<cr>', opts)
-- New Commands lsp
keymap('n', '<leader>lsf', ':Lspsaga finder<cr>', opts)
keymap('n', '<leader>lsg', ':Lspsaga goto_definition<cr>', opts)
keymap('n', '<leader>lsl', ':Lspsaga goto_definition<cr>', opts)
keymap('n', '<leader>lst', ':Lspsaga term_toggle<cr>', opts)
