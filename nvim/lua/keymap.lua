local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Autoformat
keymap("n", "<C-s>", ":Format<cr>", opts)

keymap("i", "jj", "<Esc>", { noremap = true })

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
