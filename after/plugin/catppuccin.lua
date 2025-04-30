local status, catp = pcall(require, 'catppuccin')
if (not status) then return end
-- cap
catp.setup {
	transparent_background = true,
	styles = {
		comments = { "italic" },
		properties = { "italic" },
		functions = { "italic", "bold" },
		keywords = { "italic" },
		operators = { "bold" },
		conditionals = { "italic", "bold" },
		loops = { "bold" },
		booleans = { "bold", "italic" },
		numbers = {},
		types = {},
		strings = { 'italic' },
		variables = {},
	},
	-- styles = {
	-- 	comments = { "italic" },
	-- 	conditionals = { "italic" },
	-- 	loops = {},
	-- 	functions = { 'bold' },
	-- 	keywords = {},
	-- 	strings = { 'curly' },
	-- 	variables = { 'bold', 'italic' },
	-- 	numbers = {},
	-- 	booleans = { '' },
	-- 	prbold_greenoperties = {},
	-- 	types = { 'italic' },
	-- 	operators = {},
	-- },
}
vim.cmd.colorscheme "catppuccin-macchiato"
