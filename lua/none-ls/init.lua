local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    --[[ code actions ]]
    --[[ null_ls.builtins.code_actions.eslint_d, ]]
    --[[ null_ls.builtins.formatting.eslint_d, ]]
    --[[ diagnostics ]]
    --[[ null_ls.builtins.diagnostics.actionlint, ]]
    --[[ null_ls.builtins.diagnostics.bandit, ]]
    --[[ null_ls.builtins.diagnostics.eslint_d, ]]
    --[[ null_ls.builtins.diagnostics.fish, ]]
    --[[ null_ls.builtins.diagnostics.flake8, ]]
  }
})
