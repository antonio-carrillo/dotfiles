return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local blink = require('blink.cmp')
    blink.setup({
      completion = {
        documentation = { auto_show = true },
        ghost_text = {
          enabled = true,
        },
        trigger = {
          show_on_backspace_in_keyword = true,
        },
      },
      keymap = {
        ['<C-s'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-h>'] = { 'hide', 'fallback' },
        ['<C-y>'] = { 'select_and_accept', 'fallback' },

        ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-n>'] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.select_next()
            else
              return cmp.show()
            end
          end,
          'select_next',
          'fallback',
        },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

        ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
      },
      signature = { enabled = true },
    })
  end,
}
