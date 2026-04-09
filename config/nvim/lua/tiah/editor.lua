-- Fat cursor
vim.opt.guicursor = ''

-- Input
vim.opt.mouse = ''
vim.opt.allowrevins = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent
vim.opt.shiftround = true
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

-- Terminal
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.titlestring = '%t - Nvim'

-- Characters
vim.opt.listchars = 'eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·,nbsp:+'
vim.opt.matchpairs = "(:),{:},[:],<:>,‹:›,«:»,“:”,‘:’"
vim.opt.showbreak = '<+ '

-- Page
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'

-- Windows
vim.opt.equalalways = false
vim.opt.pumblend = 50
vim.opt.winborder = 'rounded'
