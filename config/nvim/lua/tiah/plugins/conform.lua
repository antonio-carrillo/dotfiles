-- If you dont have the command, you can install the formatter with Mason.

return {
  'stevearc/conform.nvim',
  default_format_opts = {
    async = true,
    lsp_format = 'fallback',
  },
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        c = { 'clang-format' },
        cpp = { 'clang-format' },
        css = { 'prettierd' },
        javascript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        json = { 'jq' },
        lua = { 'stylua' },
        markdown = { 'mdformat' },
        python = { 'autopep8' },
        typescript = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        yaml = { 'yamlfmt' },
      },
    })

    -- Arguments per formatter
    conform.formatters.stylua = {
      append_args = {
        '--indent-type=spaces',
        '--indent-width=2',
        '--quote-style=AutoPreferSingle',
      },
    }

    -- Keymap
    vim.keymap.set({ 'n', 'v' }, '<leader>f', conform.format)
  end,
}
