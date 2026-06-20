vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*' },
  callback = function(args)
    local filetype = vim.bo[args.buf].filetype

    local two_tabstop = {
      'cmake',
      'cpp',
      'css',
      'html',
      'htmldjango',
      'javascript',
      'javascriptreact',
      'jinja',
      'json',
      'json5',
      'lua',
      'sh',
      'typescript',
      'typescriptreact',
      'zsh',
    }

    for _, language in ipairs(two_tabstop) do
      if filetype == language then
        vim.o.tabstop = 2
        vim.o.softtabstop = 2
        vim.o.shiftwidth = 2
      end
    end
  end,
})
