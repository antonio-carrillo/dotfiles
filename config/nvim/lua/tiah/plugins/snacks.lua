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
    { '<leader>pb', function() Snacks.picker.buffers() end, desc = 'Pick buffer' },
    { '<leader>ph', function() Snacks.picker.command_history() end, desc = 'Pick history command' },
    { '<leader>pc', function() Snacks.picker.commands() end, desc = 'Pick command' },
    { '<leader>pf', function() Snacks.picker.files() end, desc = 'Pick files' },
    { '<leader>pa', function()
      Snacks.picker.files({
        hidden = true,
        ignored = true,
      })
    end, desc = 'Pick all files' },
    { '<leader>pv', function() Snacks.picker.explorer() end, desc = 'Explore files' },
    { '<leader>ps', function() Snacks.picker.grep_word() end, desc = 'Grep word' },
    { '<leader>pi', function() Snacks.picker.icons() end, desc = 'Pick icon' },
    { '<leader>pk', function() Snacks.picker.keymaps() end, desc = 'Pick keymap' },
    { '<leader>pl', function() Snacks.picker.lines() end, desc = 'Pick line' },
    { '<leader>pm', function() Snacks.picker.marks() end, desc = 'Pick marks' },
    { '<leader>pr', function() Snacks.picker.registers() end, desc = 'Pick registers' },
  },
}
