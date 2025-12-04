return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local blink = require('blink.cmp')
    blink.setup({
      keymap = { preset = 'default' },
      completion = { documentation = { auto_show = true } },
    })
  end,
}
