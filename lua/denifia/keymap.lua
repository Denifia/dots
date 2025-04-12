-- <right> stays at h

-- move <down> to n from j
vim.keymap.set({ 'n', 'x' }, 'n', 'j')
vim.keymap.set({ 'n', 'x' }, 'N', 'J')

-- move <up> to e from k
vim.keymap.set({ 'n', 'x' }, 'e', 'k')
vim.keymap.set({ 'n', 'x' }, 'E', 'K')

-- move <insert> to k from i
vim.keymap.set({ 'n', 'x' }, 'k', 'i')
vim.keymap.set({ 'n', 'x' }, 'K', 'I')

-- move <left> to i from l
vim.keymap.set({ 'n', 'x' }, 'i', 'l')
vim.keymap.set({ 'n', 'x' }, 'I', 'L')

-- move "got to previous item" to CTRL-e from CTRL-p
vim.keymap.set('', '<C-e>', '<C-p>')

-- Disable arrow keys for navigation
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Open file explorer
vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

-- Move window movements to colemak
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-i>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-n>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-e>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
