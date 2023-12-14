local lsp_config = require('lspconfig')

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- python
lsp_config['pylsp'].setup {
	capabilities = capabilities
}


-- js
lsp_config['tsserver'].setup {
	capabilities = capabilities
}

--lua
lsp_config['lua_ls'].setup {
	capabilities = capabilities
}

-- html
lsp_config['html'].setup {
	capabilities = capabilities
}

-- css

lsp_config['cssls'].setup {
	capabilities = capabilities
}
