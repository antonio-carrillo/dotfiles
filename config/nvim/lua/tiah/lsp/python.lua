vim.lsp.config['python-lsp-server'] = {
  cmd = { 'pylsp' },
  filetypes = { 'python' },
  root_markers = {
    { 'pyproject.toml', 'uv.lock' },
    'requirements.txt',
    '.flake8',
    '.git',
  },
  settings = {
    pylsp = {
      configurationSources = { 'flake8' },
      plugins = {
        pycodestyle = { enabled = false },
        pyflakes = { enabled = false },
        flake8 = {
          enabled = true,
        },
        yapf = { enabled = true },
      },
    },
  },
}
vim.lsp.enable('python-lsp-server')
