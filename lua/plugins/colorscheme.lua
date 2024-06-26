return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'kanagawa'
    end,
    config = function()
      require('kanagawa').setup {}
    end,
    lazy = false,
  },
  -- { 'sainnhe/gruvbox-material' },
  -- {
  --   '2nthony/vitesse.nvim',
  --   dependencies = {
  --     'tjdevries/colorbuddy.nvim',
  --   },
  --   init = function()
  --     vim.cmd.colorscheme 'vitesse'
  --   end,
  -- },
  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('gruvbox').setup {
  --       terminal_colors = true, -- add neovim terminal colors
  --       undercurl = true,
  --       underline = true,
  --       bold = true,
  --       italic = {
  --         strings = true,
  --         emphasis = true,
  --         comments = true,
  --         operators = false,
  --         folds = true,
  --       },
  --       strikethrough = true,
  --       invert_selection = false,
  --       invert_signs = false,
  --       invert_tabline = false,
  --       invert_intend_guides = false,
  --       inverse = true, -- invert background for search, diffs, statuslines and errors
  --       contrast = '', -- can be "hard", "soft" or empty string
  --       palette_overrides = {},
  --       overrides = {},
  --       dim_inactive = false,
  --       transparent_mode = false,
  --     }
  --     vim.cmd 'colorscheme gruvbox'
  --   end,
  -- },
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'tokyonight-storm'
  --   end,
  --   opts = {},
  -- },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'catppuccin-macchiato'
  --   end,
  -- },
}
