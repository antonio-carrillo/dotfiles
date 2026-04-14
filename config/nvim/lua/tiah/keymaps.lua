-- Leader with space
vim.g.mapleader = ' '

-- Quick changes
vim.keymap.set('n', '<leader>~', 'viW~E')

-- Explore
vim.keymap.set('n', '<leader>pv', vim.cmd.Explore)

-- Move lines on visual
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Minor improvements to existing keymaps
vim.keymap.set('n', 'J', 'mtJ`t')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '*', '*zzzv')
vim.keymap.set('n', '#', '#zzzv')

-- Show/hide
vim.keymap.set('n', '<leader>tc', function ()
  vim.o.cursorbind = not vim.o.cursorbind
end)
vim.keymap.set('n', '<leader>tl', function ()
  vim.o.list = not vim.o.list
end)
vim.keymap.set('n', '<leader>ts', function ()
  local enabled = vim.o.cursorcolumn
  vim.o.cursorcolumn = not enabled
  vim.o.cursorline = not enabled
end)
vim.keymap.set('n', '<leader>tw', function ()
  local enabled = vim.o.wrap
  vim.o.wrap = not enabled
  vim.o.linebreak = not enabled
end)
