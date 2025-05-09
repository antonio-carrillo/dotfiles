return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pc', builtin.commands)
    vim.keymap.set('n', '<leader>pf', builtin.find_files)
    vim.keymap.set('n', '<leader>pt', builtin.filetypes)
    vim.keymap.set('n', '<leader>pb', builtin.buffers)
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input('Grep > ') })
    end)
  end,
}
