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
      'typescript',
      'typescriptreact',
      'json',
      'json5',
      'lua',
      'markdown',
    }

    for _, language in ipairs(two_tabstop) do
      if filetype == language then
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.shiftwidth = 2
      end
    end
  end
})
