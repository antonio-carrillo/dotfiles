-- Fat cursor
vim.o.guicursor = ''

-- Input
vim.o.mouse = ''
vim.o.allowrevins = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Indent
vim.o.shiftround = true
vim.o.smartindent = true

-- Line wrap
vim.o.wrap = false

-- Backups
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.o.undofile = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Terminal
vim.o.termguicolors = true
vim.o.title = true
vim.o.titlestring = '%t - Nvim'

-- Characters
vim.o.listchars = 'eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·,nbsp:+'
vim.o.matchpairs = '(:),{:},[:],<:>,‹:›,«:»,“:”,‘:’'
vim.o.showbreak = '<+ '

-- Page
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.signcolumn = 'yes'
vim.o.colorcolumn = '80'

-- Windows
vim.o.equalalways = false
vim.o.pumblend = 50
vim.o.winborder = 'rounded'
