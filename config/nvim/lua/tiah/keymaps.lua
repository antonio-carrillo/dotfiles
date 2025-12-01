-- Leader with space
vim.g.mapleader = ' '

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
vim.keymap.set('n', '<leader><F1>', ':set list!<CR>')

-- Diagnostic navigation 
vim.keymap.set('n', '<leader>k', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>j', vim.diagnostic.goto_next)
vim.keymap.set('n', '<C-j>', function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
vim.keymap.set('n', '<C-k>', function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end)
