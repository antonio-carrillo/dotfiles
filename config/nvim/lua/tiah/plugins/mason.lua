return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'neovim/nvim-lspconfig',
  },
  config = function()
    require('mason-lspconfig').setup({
      automatic_enable = true,
      ensure_installed = {
        'bashls',
        'clangd',
        'cmake',
        'cssls',
        'html',
        'jedi_language_server',
        'jinja_lsp',
        'jsonls',
        'lua_ls',
        'markdown_oxide',
        'ts_ls',
        'yamlls',
      },
    })
  end,
}
