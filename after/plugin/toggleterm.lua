require('toggleterm').setup {}

vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = "Toggle Terminal" })
vim.keymap.set('t', '<leader>tt', ':<C-\\><C-n>:ToggleTerm<CR>',
	{ noremap = true, silent = true, desc = "Toggle Terminal" })
