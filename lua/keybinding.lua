local which = require("which-key")
which.add({
    {"<leader>?", which.show, desc="Show all commands"},
    {"<Tab>", "<CMD>bnext <CR>", desc="Go to next buffer"},
    {"<S-Tab>", "<CMD>bprev <CR>", desc="Go to previous buffer"},
})

-- neo-tree
which.add({
    {"<leader>e", "<Cmd>Neotree toggle<CR>", desc="Toggle File Explorer", mode={"n", "v"}},
})

-- telescope
local telescope_builtin = require('telescope.builtin')
which.add({
    {"<leader>f", group="telescope"},
    {"<leader>ff", telescope_builtin.find_files, desc="Find files", mode="n"},
    {"<leader>fg", telescope_builtin.live_grep, desc="Find text", mode="n"},
    {"<leader>fb", telescope_builtin.buffers, desc="Find in buffers", mode="n"},
})

-- fterm
local fterm = require("FTerm")
which.add({
    {"<leader>\\", fterm.toggle, desc="Toggle terminal", mode="n"},
    {"<leader>\\", fterm.toggle, desc="Close terminal", mode="t"},
})

-- lsp 
which.add({
    {"<leader>gd", telescope_builtin.lsp_definitions, desc="Go to definition", mode="n"},
    {"<leader>gr", telescope_builtin.lsp_references, desc="Go to references", mode="n"},
    {"<leader>gi",  telescope_builtin.lsp_implementations, desc="Go to implementaiton", mode="n"},
    {"<leader>gtd", telescope_builtin.lsp_type_definitions, desc="Go to type definition", mode="n"},
    {"<C-S>", vim.lsp.buf.signature_help, desc="Show signature", mode="ni"},
    {"<leader>d", vim.lsp.buf.hover, desc="Hover definition", mode="n"},
    {"<leader>=", function() vim.lsp.buf.format { async = true } end, desc="format code", mode="n"},
    {"<leader>r", vim.lsp.buf.rename, desc="Rename symbol", mode="n"},
    {"<leader>ca", vim.lsp.buf.code_action, desc="Code action", mode="n"},
})

-- git-diff
which.add({
    {"<leader>d", group="Git diff view"},
    {"<leader>dvo", "<CMD>DiffviewOpen <CR>", desc="Git diff view", mode="n"},
    {"<leader>dvc", "<CMD>DiffviewClose <CR>", mode="Close git diff view", mode="n"},
})
