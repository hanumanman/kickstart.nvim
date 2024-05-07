return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'kanagawa'
    end,
    lazy = false,
  },
  -- { 'sainnhe/gruvbox-material' },
  --[[ {
    '2nthony/vitesse.nvim',
    dependencies = {
      'tjdevries/colorbuddy.nvim',
    },
    init = function()
      vim.cmd.colorscheme 'vitesse'
    end,
  }, ]]
}
