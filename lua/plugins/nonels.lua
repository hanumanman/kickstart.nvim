return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        require('none-ls.diagnostics.eslint_d').with {
          condition = function(utils)
            return utils.root_has_file { '.eslintrc.js', '.eslintrc.json', '.eslintrc.cjs' }
          end,
        },
        require('none-ls.code_actions.eslint_d').with {
          condition = function(utils)
            return utils.root_has_file { '.eslintrc.js', '.eslintrc.json', '.eslintrc.cjs' }
          end,
        },
        null_ls.builtins.diagnostics.fish,
      },
    }
  end,
}
