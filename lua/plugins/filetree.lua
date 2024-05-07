return {
  {
    'stevearc/oil.nvim',
    keys = {
      { '-', '<cmd>Oil<cr>', desc = '[Oil]Open parent directory' },
    },
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = { {
      '<leader>n',
      '<cmd>Neotree toggle <cr>',
      desc = 'Open Neotree',
    } },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          --              -- the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
      event_handlers = {

        {
          -- auto close
          event = 'file_opened',
          handler = function(file_path)
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    },
  },
}
