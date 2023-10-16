return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap -- for conciseness
		local on_attach = function(client, bufnr)
			keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>" ) -- show definition, references
			keymap.set("n", "gD", vim.lsp.buf.declaration ) -- go to declaration
			keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>" ) -- show lsp definitions
			keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>" ) -- show lsp implementations
			keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>" ) -- show lsp type definitions
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action ) -- see available code actions, in visual mode will apply to selection
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename ) -- smart rename
			keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>") -- show  diagnostics for file
			keymap.set("n", "<leader>d", vim.diagnostic.open_float ) -- show diagnostics for line
			keymap.set("n", "[d", vim.diagnostic.goto_prev ) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", vim.diagnostic.goto_next ) -- jump to next diagnostic in buffer
			keymap.set("n", "K", vim.lsp.buf.hover ) -- show documentation for what is under cursor
		end
		local capabilities = cmp_nvim_lsp.default_capabilities()
		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["tailwindcss"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
		})
		lspconfig["pyright"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = { -- custom settings for lua
				Lua = {
					-- make the language server recognize "vim" global
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						-- make language server aware of runtime files
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
		-- Remove dumbass error >:[
		local function filter_tsserver_diagnostics(_, result, ctx, config)
			if result.diagnostics == nil then
				return
			end
			-- ignore some tsserver diagnostics
			local idx = 1
			while idx <= #result.diagnostics do
				local entry = result.diagnostics[idx]
				-- codes: https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
				if entry.code == 80001 then
					-- { message = "File is a CommonJS module; it may be converted to an ES module.", }
					table.remove(result.diagnostics, idx)
				else
					idx = idx + 1
				end
			end
			vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
		end
		vim.lsp.handlers["textDocument/publishDiagnostics"] = filter_tsserver_diagnostics
	end,
  
}



