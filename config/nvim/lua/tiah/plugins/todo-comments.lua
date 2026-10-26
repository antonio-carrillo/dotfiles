return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    colors = {
      default = { "Identifier", "#FFFFFF" },
      error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
      hint = { "DiagnosticHint", "#007777" },
      info = { "DiagnosticInfo", "#2563EB" },
      test = { "Identifier", "#AA00AA" },
      warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    },
    keywords = {
      ADC = {
        icon = '󰞮',
        color = 'info',
        alt = { 'TIAH', '<|>' },
      },
      DEVELOPMENT = {
        icon = '󰖷',
        color = 'test',
        alt = { 'DEV', '+++' },
      },
      FIXME = {
        icon = '󰃤',
        color = 'error',
        alt = { 'FIX', 'BUG', 'FIXIT', 'ISSUE', '---' },
      },
      HACK = {
        icon = '󰓠',
        color = 'warning',
        alt = { 'TRICK', '###' },
      },
      NOTE = {
        icon = '󰏫',
        color = 'hint',
        alt = { 'INFO', 'INFORMATION', '~~~' },
      },
      PERFORMANCE = {
        icon = '󱑂',
        color = 'warning',
        alt = { 'PERF', 'OPTIMIZE', 'OPTIM', '<<<' },
      },
      TEST = {
        icon = '󰙨',
        color = 'test',
        alt = { 'TESTING', 'PASSED', 'FAILED', '@@@' },
      },
      TODO = {
        icon = '󰄾',
        color = 'info',
        alt = { 'PENDING', 'NEXT', '>>>' },
      },
      WARNING = {
        icon = '󰀦',
        color = 'warning',
        alt = { 'WARN', '!!!' },
      },
    },
  },
}
