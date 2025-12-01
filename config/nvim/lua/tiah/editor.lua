-- Fat cursor
vim.opt.guicursor = ''
vim.opt.mouse = ''

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Term colors
vim.opt.termguicolors = true

-- Invisible characters
vim.opt.listchars = 'eol:$,tab:>-,trail:~,extends:>,precedes:<'

-- Page
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'
