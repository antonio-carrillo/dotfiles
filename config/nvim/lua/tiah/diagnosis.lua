local function show_on_jump(diagnostic, bufnr)
  if not diagnostic then return end
  vim.diagnostic.open_float({
    bufnr = bufnr,
    namespace = diagnostic.namespace,
  })
end

vim.diagnostic.config({
  update_in_insert = true,
  severity_sort = true,
  jump = {
    on_jump = show_on_jump
  },
})
