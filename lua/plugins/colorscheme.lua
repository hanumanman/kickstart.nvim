return {
  {
    'rebelot/kanagawa.nvim',
    -- 'xero/miasma.nvim',
    -- "ellisonleao/gruvbox.nvim",
    -- "catppuccin/nvim",
    -- 'projekt0n/github-nvim-theme',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'kanagawa'
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
    lazy = false,
  },
  -- { 'sainnhe/gruvbox-material' },
}
