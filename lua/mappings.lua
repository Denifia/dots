-- [[ Key Mappings ]]

-- Up/down/left/right
vim.keymap.set({ 'n', 'x' }, 'h', 'h', { desc = 'Left (h)' })
vim.keymap.set({ 'n', 'x' }, 'n', 'j', { desc = 'Down (j)' })
vim.keymap.set({ 'n', 'x' }, 'N', 'J', { desc = '' })
vim.keymap.set({ 'n', 'x' }, 'e', 'k', { desc = 'Up (k)' })
vim.keymap.set({ 'n', 'x' }, 'E', 'K', { desc = '' })
vim.keymap.set({ 'n', 'x' }, 'i', 'l', { desc = 'Right (l)' })

-- Moving around
-- vim.keymap.set({ 'n', 'x' }, 'H', 'b', { desc = 'Word backwords (b)' })
-- vim.keymap.set({ 'n', 'x' }, 'I', 'w', { desc = 'Word forwards (w)' })
-- these aren't working :(
-- vim.keymap.set({ 'n', 'x' }, '<C-h>', '^', { desc = 'Start of line (^)' })
-- vim.keymap.set({ 'n', 'x' }, '<C-i>', '$', { desc = 'Start of line ($)' })

-- move <insert> to k from i
vim.keymap.set({ 'n', 'x' }, 'k', 'i', { desc = 'Put after (i)' })
vim.keymap.set({ 'n', 'x' }, 'K', 'I', { desc = 'Put before (I)' })

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
