return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer" , "go_pls"},
    }
}