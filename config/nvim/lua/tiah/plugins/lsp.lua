return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'mason-org/mason.nvim', version = '^1.0.0' },
    { 'mason-org/mason-lspconfig.nvim', version = '^1.0.0' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({ buffer = bufnr })
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      -- Server names from mason-lspconfig
      ensure_installed = {
        'bashls',
        'clangd',
        'cmake',
        'cssls',
        'docker_compose_language_service',
        'dockerls',
        'jedi_language_server',
        'jinja_lsp',
        'jsonls',
        'lua_ls',
        'markdown_oxide',
        'pylsp',
        'rust_analyzer',
        'sqlls',
        'ts_ls',
        'yamlls',
      },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,

        pylsp = function()
          require('lspconfig').pylsp.setup({
            settings = {
              pylsp = {
                configurationSources = {'flake8'},
                plugins = {
                  flake8 = {
                    enabled = true,
                  },
                  jedi_completion = {
                    enabled = false,
                  },
                  jedi_definition = {
                    enabled = false,
                  },
                  jedi_hover = {
                    enabled = false,
                  },
                  jedi_references = {
                    enabled = false,
                  },
                  jedi_signature_help = {
                    enabled = false,
                  },
                  jedi_symbols = {
                    enabled = false,
                  },
                  mccabe = {
                    enabled = false,
                  },
                  pycodestyle = {
                    enabled = false,
                  },
                  pyflakes = {
                    enabled = false,
                  },
                  yapf = {
                    enabled = false,
                  },
                },
              },
            },
          })
        end,
      },
    })

    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp_zero.defaults.cmp_mappings({
      ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })

    lsp_zero.on_attach(function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }
      vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
      vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
      vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
      vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspase_symbol() end, opts)
      vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
      vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
      vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set('n', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    end)

    lsp_zero.setup()
  end,
}
