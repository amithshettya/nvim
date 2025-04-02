local which = require("which-key")
which.add({
    {"<leader>?", which.show, desc="Show all commands"},
})

-- neo-tree
which.add({
    {"<leader>e", "<Cmd>Neotree toggle<CR>", desc="Toggle File Explorer", mode={"n", "v"}},
})

-- telescope
local builtin = require('telescope.builtin')
which.add({
    {"<leader>f", group="telescope"},
    {"<leader>ff", builtin.find_files, desc="Find files", mode="n"},
    {"<leader>fg", builtin.live_grep, desc="Find text", mode="n"},
    {"<leader>fb", builtin.buffers, desc="Find in buffers", mode="n"},
})

-- fterm
local fterm = require("FTerm")
which.add({
    {"<leader>\\", fterm.toggle, desc="Toggle terminal", mode="n"},
    {"<leader>\\", fterm.toggle, desc="Close terminal", mode="t"},
})

-- lsp 
which.add({
    {"gd", vim.lsp.buf.definition, desc="Go to definition", mode="n"},
    {"<leader>d", vim.lsp.buf.hover, desc="Hover definition", mode="n"},
    {"<leader>=", function() vim.lsp.buf.format { async = true } end, desc="format code", mode="n"},
    {"<leader>r", vim.lsp.buf.rename, desc="Rename symbol", mode="n"},
    {"<leader>ca", vim.lsp.buf.code_action, desc="Code action", mode="n"},
})

-- git-diff
which.add({
    {"<leader>gd", "<CMD>DiffviewOpen <CR>", desc="Git diff view", mode="n"},
    {"<leader>gdc", "<CMD>DiffviewClose <CR>", mode="Close git diff view", mode="n"},
})