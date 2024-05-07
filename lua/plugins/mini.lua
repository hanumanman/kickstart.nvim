return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  keys = {
    -- {
    --   '<leader>n',
    --   '<cmd>lua MiniFiles.open()<cr>',
    --   desc = 'Mini files',
    -- },
  },
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()
    -- Show buffers as tab
    require('mini.tabline').setup {
      use_icons = true,
    }
    -- Files manipulation
    -- require('mini.files').setup()
  end,
}
