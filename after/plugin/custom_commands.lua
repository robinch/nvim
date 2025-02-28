-- Copy file path to clipboard

local function copy_file_path_to_clipboard()
	local file_path = vim.fn.expand('%')
	vim.fn.setreg('+', file_path)
end

vim.keymap.set("n", '<leader>cp', copy_file_path_to_clipboard, { noremap = true, silent = true, desc = "Copy file path to clipboard"})
