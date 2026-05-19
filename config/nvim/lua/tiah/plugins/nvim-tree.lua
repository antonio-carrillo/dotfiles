return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup({
      view = {
        width = 30,
      },
    })

    local api = require('nvim-tree.api')
    vim.keymap.set('n', '<C-s>', api.node.open.horizontal)

  end,
}
