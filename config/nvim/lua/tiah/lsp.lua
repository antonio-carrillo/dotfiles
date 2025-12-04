-- Here languages are added to the NeoVim LSP.
-- This requires each LSP server to be installed in the system or the
-- mason-lspconfig plugin to retrieve it.

vim.lsp.config('*', {
  root_markers = { '.git' },
})

-- Bashls
vim.lsp.config('bashls', {
  cmd = { 'bash-language-server' },
  filetypes = { 'bash', 'sh' },
})
vim.lsp.enable('bashls')

-- Lua
vim.lsp.config('luals', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
})
vim.lsp.enable('luals')

-- Python
vim.lsp.config('jedi-language-server', {
  cmd = { 'jedi-language-server' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    '.git',
  },
})
vim.lsp.enable('jedi-language-server')

-- Tailwind
vim.lsp.config('tailwindcss', {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'aspnetcorerazor',
    'astro',
    'astro-markdown',
    'blade',
    'clojure',
    'django-html',
    'htmldjango',
    'edge',
    'eelixir',
    'elixir',
    'ejs',
    'erb',
    'eruby',
    'gohtml',
    'gohtmltmpl',
    'haml',
    'handlebars',
    'hbs',
    'html',
    'htmlangular',
    'html-eex',
    'heex',
    'jade',
    'leaf',
    'liquid',
    'markdown',
    'mdx',
    'mustache',
    'njk',
    'nunjucks',
    'php',
    'razor',
    'slim',
    'twig',
    'css',
    'less',
    'postcss',
    'sass',
    'scss',
    'stylus',
    'sugarss',
    'javascript',
    'javascriptreact',
    'reason',
    'rescript',
    'typescript',
    'typescriptreact',
    'vue',
    'svelte',
    'templ',
  }
})
vim.lsp.enable('tailwindcss')

-- TypeScript
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
})
vim.lsp.enable('ts_ls')
