local status, minimap = pcall(require, 'mini.map')
if(not status) then return end

minimap.setup({
	integrations = {
		minimap.gen_integration.diagnostic(),
		minimap.gen_integration.gitsigns(),
		minimap.gen_integration.builtin_search()
	},
	window = {
		width =  15,
		winblend = 70
	},
	symbols = {
		scroll_line = '',
		encode = minimap.gen_encode_symbols.dot('3x2')
		-- scroll_view = ''
	}
})

vim.keymap.set('n', '<Leader>mo', MiniMap.open)
vim.keymap.set('n', '<Leader>mc', MiniMap.close)
vim.keymap.set('n', '<Leader>mm', MiniMap.toggle)
vim.keymap.set('n', '<Leader>mr', MiniMap.refresh)
vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side)
