return {
  'glepnir/nerdicons.nvim',
  config = function()
    local nerdicons = require('nerdicons')

    nerdicons.setup({})

    vim.keymap.set('n', '<leader>n', vim.cmd.NerdIcons)
  end,
}
