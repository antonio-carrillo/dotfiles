return {
  'theprimeagen/harpoon',
  config = function()
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')

    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Harpoon add file' })
    vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu, { desc = 'Harpooon edit menu' })

    for i = 1, 9 do
      vim.keymap.set('n', '<leader>' .. i, function()
        ui.nav_file(i)
      end, { desc = string.format('Harpoon show buffer %d', i) })
    end
  end,
}
