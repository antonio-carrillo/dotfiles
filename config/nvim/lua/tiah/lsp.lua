vim.lsp.config['*'] = {
  root_markers = { '.git' },
}

-- Expected commands and their language script to import
local servers = {
  ['lua-language-server'] = 'lua',
  pylsp = 'python',
}

-- If command exists then the language will be imported
for command, language in pairs(servers) do
  if vim.fn.executable(command) == 1 then
    require('tiah.lsp.' .. language)
  end
end
