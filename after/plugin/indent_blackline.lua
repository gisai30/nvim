local hooks = require("ibl.hooks")
local ibl = require("ibl")
local highlight = {
  "RainbowViolet",
  "RainbowCyan",
  "RainbowYellow",
  "RainbowRed",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
}
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#ed8796" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#eed49f" })
  vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#8aadf4" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#f0c6c6" })
  vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#a6da95" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#c6a0f6" })
  vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#91d7e3" })
end)

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
ibl.setup {
  indent = {
    char = "▏", -- o cualquier otro carácter como "│"
		-- smart_indent_cap = true,
  },
  scope = {
    enabled = true,
		include = { node_type = { ["*"] = { "*" } } },
    highlight = highlight,
		-- show_start = true,
    -- show_end = false,
  },
}

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
