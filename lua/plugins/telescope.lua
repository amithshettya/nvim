return     {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
            layout_config = {
              horizontal = {
                prompt_position = "top",
                preview_width = 0.6,
              },
            },
            mappings = {
                n = {
                    ['dd'] = require('telescope.actions').delete_buffer,
                },
            },
          },
    }
}
