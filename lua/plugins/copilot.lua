return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = { enabled = true, auto_trigger = true, keymap = {
        accept = '<C-I>',
      } },
      panel = { enabled = false },
    }
  end,
}
