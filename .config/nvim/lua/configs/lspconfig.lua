local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    "cssls",
    "astro",
    "clangd",
    "asm_lsp",
    "ts_ls",
    "gopls",
    "tailwindcss",
    "html",
    "jsonls",
    "prismals",
    "csharp_ls",
    "kotlin_language_server",
    "pyright",
    "svelte",
    "jdtls",
    "eslint",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

lspconfig.gdscript.setup {
    on_attach = on_attach,
    on_init = on_init,
    cmd = { "godot-wsl-lsp", "--useMirroredNetworking" },
}
