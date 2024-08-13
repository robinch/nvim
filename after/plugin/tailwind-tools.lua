local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("cmp_nvim_lsp").default_capabilities(client_capabilities)

local lspconfig = require("lspconfig")

lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	-- filetypes = { "html", "elixir", "eelixir", "heex" },
	init_options = {
		userLanguages = {
			elixir = "html-eex",
			eelixir = "html-eex",
			heex = "html-eex",
		},
	},
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					'class[:]\\s*"([^"]*)"',
				},
			},
		},
	},
})
