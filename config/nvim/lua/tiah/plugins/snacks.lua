local common_opts = {
  win = {
    input = {
      keys = {
        ['<Esc>'] = '',
      },
    },
    list = {
      keys = {
        ['<Esc>'] = '',
      },
    },
    preview = {
      keys = {
        ['<Esc>'] = '',
      },
    },
  },
}

return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
    { '<leader>pb', function() Snacks.picker.buffers(common_opts) end, desc = 'Pick buffer' },
    { '<leader>ph', function() Snacks.picker.command_history(common_opts) end, desc = 'Pick history command' },
    { '<leader>pc', function() Snacks.picker.commands(common_opts) end, desc = 'Pick command' },
    { '<leader>pf', function() Snacks.picker.files(common_opts) end, desc = 'Pick files' },
    { '<leader>pv', function() Snacks.picker.explorer(common_opts) end, desc = 'Explore files' },
    { '<leader>ps', function() Snacks.picker.grep(common_opts) end, desc = 'Grep' },
    { '<leader>pi', function() Snacks.picker.icons(common_opts) end, desc = 'Pick icon' },
    { '<leader>pk', function() Snacks.picker.keymaps(common_opts) end, desc = 'Pick keymap' },
    { '<leader>pl', function() Snacks.picker.lines(common_opts) end, desc = 'Pick line' },
    { '<leader>pm', function() Snacks.picker.marks(common_opts) end, desc = 'Pick marks' },
    { '<leader>pr', function() Snacks.picker.registers(common_opts) end, desc = 'Pick registers' },
  },
}
