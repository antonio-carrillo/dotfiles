-- Leader with space
vim.g.mapleader = ' '

-- Quick changes
vim.keymap.set('n', '<leader>~', 'viW~E', { desc = 'Toggle capital letters for WORD' })

-- Explore
vim.keymap.set('n', '<leader>pv', vim.cmd.Explore, { desc = 'Explore files' })

-- Move lines on visual
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move down selected lines' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move up selected lines' })

-- Minor improvements to existing keymaps
vim.keymap.set('n', 'J', 'mtJ`t', { desc = 'Combine lines without moving the cursor' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move up centering' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move down centering' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next coincidence centering' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous coincidence centering' })
vim.keymap.set('n', '*', '*zzzv', { desc = 'Next hovered coincidence centering' })
vim.keymap.set('n', '#', '#zzzv', { desc = 'Previous hovered coincidence centering' })

-- Show/hide
vim.keymap.set('n', '<leader>tc', function()
  vim.o.cursorbind = not vim.o.cursorbind
end, { desc = 'Toggle cursor bind between windows' })
vim.keymap.set('n', '<leader>tl', function()
  vim.o.list = not vim.o.list
end, { desc = 'Toggle showing whitespaces' })
vim.keymap.set('n', '<leader>ts', function()
  local enabled = vim.o.cursorcolumn
  vim.o.cursorcolumn = not enabled
  vim.o.cursorline = not enabled
end, { desc = 'Toggle cursor cross' })
vim.keymap.set('n', '<leader>tw', function()
  local enabled = vim.o.wrap
  vim.o.wrap = not enabled
  vim.o.linebreak = not enabled
end, { desc = 'Toggle text mode' })
