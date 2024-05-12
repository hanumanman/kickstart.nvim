-- General utils
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<cr>', 'o<Esc>')
vim.keymap.set('n', '<leader><cr>', 'O<Esc>')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', 'Y', 'y$')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

-- Buffer controls
vim.keymap.set('n', '<leader>x', ':bd<cr>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>bc', ':%bd|e#|bd#<cr>', { desc = 'Close other buffers' })
vim.keymap.set('n', '<C-i>', ':bn<cr>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader><C-i>', ':b#<cr>', { desc = 'Go to last opened buffer' })

--  Use CTRL+<hjkl> to switch between windows
--  See :help wincmd for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
