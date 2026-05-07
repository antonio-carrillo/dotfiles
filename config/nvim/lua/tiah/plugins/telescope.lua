return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>pc', builtin.commands, { desc = 'Telescope commands' })
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>pk', builtin.keymaps, { desc = 'Telescope keymaps' })
    vim.keymap.set('n', '<leader>pt', builtin.filetypes, { desc = 'Telescope filetypes' })
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input('Grep > ') })
    end, { desc = 'Telescope grep string' })
  end,
}
