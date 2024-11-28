return {
  'jakewvincent/mkdnflow.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('mkdnflow').setup({})
  end,
}
