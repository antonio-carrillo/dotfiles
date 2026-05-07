return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gg', vim.cmd.Git, { desc = 'Fugitive Git' })
  end,
}
