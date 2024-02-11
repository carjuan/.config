return {
  'mfussenegger/nvim-lint',
  opts = {
    linters_by_ft = {
      typescript = { 'eslint_d' },
      javascript = { 'eslint_d' },
      bash = { 'shellcheck' },
      sh = { 'shellcheck' },
      lua = { 'luacheck' },
    },
  },
}
