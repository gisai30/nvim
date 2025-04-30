local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
	ensure_installed = {
		'tsx',
		'lua',
		'json',
		'scss',
		'typescript',
		'css',
		'javascript',
		'html'
	},
	
	highlight = {
		enable = true,
		-- disable = {}
	},
	indent = {
		enable = true,
		-- disable = {}
	},
}
