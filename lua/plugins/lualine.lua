return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'nvim-lualine/lualine.nvim' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto',
      },
      sections = {
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = {
          {
            require('noice').api.statusline.mode.get,
            cond = require('noice').api.statusline.mode.has,
            color = { fg = '#000' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },
      },
    }
  end,
}
