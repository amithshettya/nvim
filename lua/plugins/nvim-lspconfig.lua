return     {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.gopls.setup({})
        lspconfig.lua_ls.setup({})
    end,
}