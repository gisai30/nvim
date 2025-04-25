local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
-- local status, ident = pcall(require, 'ibl')
-- local status, ident = pcall(require, 'indent_blankline')
-- if (not status) then return end

-- vim.opt.list = true
-- vim.opt.listchars:append 'eol:⤦'

-- -- vim.opt.indent_char = ''
-- ident.setup {
-- 	show_end_of_line = true,
-- 	space_char_blankline = " ",
-- 	show_current_context = true,
-- 	show_current_context_start = true,
-- 	-- markdown = {
-- 	-- 	headline_highlights = {
-- 	-- 		"Headline1",
-- 	-- 		"Headline2",
-- 	-- 		"Headline3",
-- 	-- 		"Headline4",
-- 	-- 		"Headline5",
-- 	-- 		"Headline6",
-- 	-- 	},
-- 	-- 	codeblock_highlight = "CodeBlock",
-- 	-- 	dash_highlight = "Dash",
-- 	-- 	quote_highlight = "Quote",
-- 	-- },
-- }
