return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        extensions = {
            themes = {
                persist = {
                    enabled = true
                }
            }
        }
    },
    config = function(_, opts)
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = 'Telescope commands' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope keymaps' })
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'Telescope treesitter' })
        vim.keymap.set('n', '<leader>fT', builtin.filetypes, { desc = 'Telescope filetypes' })

        require('telescope').setup(opts)
    end
}
