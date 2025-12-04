return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
  },
  config = function()
    require('mason-lspconfig').setup({
      automatic_enable = true,
    })
  end,
}
