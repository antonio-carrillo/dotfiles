-- Index plugin sources so their annotations (e.g. `snacks.terminal.Opts`) resolve
local library = {
  vim.env.VIMRUNTIME,
  '${3rd}/luv/library',
}
for _, path in ipairs(vim.fn.globpath(vim.fn.stdpath('data') .. '/lazy', '*/lua', false, true)) do
  table.insert(library, path)
end

vim.lsp.config['lua-language-server'] = {
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
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      workspace = {
        checkThirdParty = false,
        library = library,
      },
    },
  },
}
vim.lsp.enable('lua-language-server')
