vim.lsp.config['*'] = {
  root_markers = { '.git' },
}

-- command = language script
servers = {
  pylsp = 'python',
}

-- If command exists, language will be imported
for command, language in pairs(servers) do
  if vim.fn.executable(command) == 1 then
    require('tiah.lsp.' .. language)
  end
end
