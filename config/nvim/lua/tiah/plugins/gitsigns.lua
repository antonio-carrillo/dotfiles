return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require('gitsigns')

    -- Navigate
    vim.keymap.set('n', '<leader>gn', function()
      gitsigns.nav_hunk('next')
    end, { desc = 'Git next hunk' })
    vim.keymap.set('n', '<leader>gp', function()
      gitsigns.nav_hunk('prev')
    end, { desc = 'Git previous hunk' })

    -- Manage hunks
    vim.keymap.set('n', '<leader>ga', gitsigns.stage_hunk, { desc = 'Git stage hunk' })
    vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'Git reset hunk' })

    -- Toggles
    vim.keymap.set('n', '<leader>gb', gitsigns.toggle_current_line_blame, { desc = 'Git toggle blame' })
    vim.keymap.set('n', '<leader>gs', gitsigns.toggle_signs, { desc = 'Git toggle signs' })

    gitsigns.setup()
  end,
}
