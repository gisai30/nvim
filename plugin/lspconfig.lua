local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
	-- formating
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		-- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
		vim.api.nvim_command [[augroup END]]
	end

end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lsp_flasgs = {
	debounce_text_changes = 150,
}


-- nvim_lsp.tsserver.setup {
-- 	on_attach = function(client, bufnr)
--         -- Llamar la función original on_attach si existe
--         if on_attach then
--             on_attach(client, bufnr)
--         end
--         -- La propiedad resolved_capabilities está obsoleta
--         -- En su lugar, usar server_capabilities
        
--         -- Deshabilitar Inlay Hints
-- 			-- print(client.server_capabilities.inlayHintProvider)	
--         -- if client.server_capabilities.inlayHintProvider then
						
--             -- client.server_capabilities.inlayHintProvider = false
--         -- end
-- 			-- print(client.server_capabilities.inlayHintProvider)	
--     end,
--     filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
--     cmd = { "typescript-language-server", "--stdio" },
--     capabilities = capabilities
-- }
nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetype = { "javascript", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
	capabilities = capabilities
}

nvim_lsp.lua_ls.setup {
	settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

nvim_lsp.cssmodules_ls.setup {
}

nvim_lsp.cssls.setup {
  capabilities = capabilities,
}

nvim_lsp.marksman.setup {}

-- require("lvim.lsp.manager").setup("marksman")
