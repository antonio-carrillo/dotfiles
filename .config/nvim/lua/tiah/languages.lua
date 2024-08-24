vim.api.nvim_create_autocmd('FileType', {
  pattern = {'*'},
  callback = function (args)
    local filetype = vim.bo[args.buf].filetype

    if filetype == 'lua' then
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.shiftwidth = 2
    end
  end
})
