-- Here languages are added to the NeoVim LSP.
-- This requires each LSP server to be installed in the system or the
-- Mason plugin to retrieve it.
-- Call `:Mason`, search the language you want and its LSP, then add it below.
-- Check https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- for configurations.

vim.lsp.config['*'] = {
  root_markers = { '.git' },
}

-- Bashls
vim.lsp.config['bashls'] = {
  cmd = { 'bash-language-server' },
  filetypes = { 'bash', 'sh' },
}
vim.lsp.enable('bashls')

-- C/C++
vim.lsp.config['clangd'] = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
}
vim.lsp.enable('clangd')

-- CMake
vim.lsp.config['cmake'] = {
  cmd = { 'cmake-language-server' },
  filetypes = { 'cmake' },
  init_options = {
    buildDiectory = 'build',
  },
  root_markers = {
    'CMakePresets.json',
    'CTestConfig.cmake',
    'build',
    'cmake',
  },
}
vim.lsp.enable('cmake')

-- HTML
vim.lsp.config['html'] = {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html', 'template' },
  root_markers = { 'package.json' },
}
vim.lsp.enable('html')

-- JSON
vim.lsp.config['jsonls'] = {
  cmd = { 'vscode-json-language-server', '--stdio' },
  filetypes = { 'json', 'jsonc' },
}
vim.lsp.enable('jsonls')

-- Lua
vim.lsp.config['lua_ls'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end
  end,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths
          -- here.
          -- '${3rd}/luv/library',
          -- '${3rd}/busted/library',
        },
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
}
vim.lsp.enable('lua_ls')

-- Markdown
vim.lsp.config['markdown_oxide'] = {
  cmd = { 'markdown-oxide' },
  filetypes = { 'markdown' },
  root_markers = { '.obsidian', '.moxide.toml' },
}
vim.lsp.enable('markdown_oxide')

-- Python
vim.lsp.config['jedi_language_server'] = {
  cmd = { 'jedi-language-server' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
  },
}
vim.lsp.enable('jedi_language_server')

-- Tailwind
vim.lsp.config['tailwindcss'] = {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'aspnetcorerazor',
    'astro',
    'astro-markdown',
    'blade',
    'clojure',
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
    'template',
  },
}
vim.lsp.enable('tailwindcss')

-- TypeScript
vim.lsp.config['ts_ls'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
}
vim.lsp.enable('ts_ls')

-- YAML
vim.lsp.config['yamlls'] = {
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = {
    'yaml',
  },
}
vim.lsp.enable('yamlls')
