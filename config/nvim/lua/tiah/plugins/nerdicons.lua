return {
  'glepnir/nerdicons.nvim',
  config = function()
    local nerdicons = require('nerdicons')

    nerdicons.setup({
      prompt = ' ',
      border = 'rounded',
      preview_prompt = '> ',
      register = '*',
    })

    vim.keymap.set('n', '<leader>n', vim.cmd.NerdIcons)
  end,
}
