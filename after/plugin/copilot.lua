-- use this table to disable/enable filetypes

vim.g.copilot_filetypes = {["*"] = false, elixir = true, go = true, rust = true}

------ disabe tab and use ctrl+j instead

-- Insert mode mapping
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("\\<CR>")', {silent = true, script = true, expr = true})

-- Set global variable
vim.g.copilot_no_tab_map = true
vim.g['copilot_assume_mapped'] = true

