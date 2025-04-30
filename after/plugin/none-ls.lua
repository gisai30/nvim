local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
    },
})

-- null_ls.setup({
--     sources = {
--         null_ls.builtins.formatting.stylua,
--         null_ls.builtins.diagnostics.eslint,
--         null_ls.builtins.completion.spell,
--     },
-- })

-- none_ls.setup ({
-- -- 	sources = {
-- --     none_ls.builtins.formatting.prettier.with({
-- --       filetypes = {
-- --         "javascript",
-- --         "javascriptreact",
-- --         "typescript",
-- --         "typescriptreact",
-- --         "json",
-- --         "css",
-- --         "scss",
-- --         "less",
-- --         "html",
-- --         "yaml",
-- --         "markdown",
-- --       },
-- --       extra_args = { "--config-precedence", "prefer-file" },
-- --     }),
-- --   },

-- --   on_attach = function(client, bufnr)
-- --     if client.supports_method("textDocument/formatting") then
-- --       local group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

-- --       vim.api.nvim_create_autocmd("BufWritePre", {
-- --         group = group,
-- --         buffer = bufnr,
-- --         callback = function()
-- --           vim.lsp.buf.format({ bufnr = bufnr })
-- --         end,
-- --       })
-- --     end
-- --   end,
-- 	-- on_attach = function(client, bufnr)
-- 	-- 	if client.server_capabilities.documentFormattingProvider then
-- 	-- 		vim.api.nvim_command [[augroup Format]]
-- 	-- 		vim.api.nvim_command [[autocmd! * <buffer>]]
-- 	-- 		-- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
-- 	-- 		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
-- 	-- 		vim.api.nvim_command [[augroup END]]
-- 	-- 	end
-- 	-- end,
-- 	-- on_attach = function(client, bufnr)
--     -- if client.server_capabilities.documentFormattingProvider then
--       -- local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

--       -- vim.api.nvim_create_autocmd("BufWritePre", {
--         -- group = augroup,
--         -- buffer = bufnr,
--         -- callback = function()
--           -- vim.lsp.buf.format({ bufnr = bufnr })
--         -- end,
--       -- })
--     -- end
--   -- end,
-- 	-- sources = {
-- 	-- 	null_ls.builtins.diagnostics.eslint_d.with({
-- 	-- 		diagnostics_format = '[eslint] #{m}\n(#{c})'
-- 	-- 	}),
-- 	-- 	null_ls.builtins.diagnostics.fish
-- 	-- }
-- })
