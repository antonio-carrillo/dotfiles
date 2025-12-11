return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local blink = require('blink.cmp')
    blink.setup({
      keymap = {
        preset = 'default',
        ['<C-n>'] = {
          function(cmp)
            if cmp.snippet_active() then return cmp.select_next()
            else return cmp.show() end
          end,
          'select_next',
          'fallback',
        },
      },
      completion = {
        documentation = { auto_show = true },
        trigger = {
          show_on_backspace_in_keyword = true,
        },
      },
    })
  end,
}
