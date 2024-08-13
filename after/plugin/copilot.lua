-- use this table to disable/enable filetypes
vim.g.copilot_filetypes = {["*"] = false, elixir = true, go = true, rust = true}

------ disabe tab and use ctrl+j instead
-- Insert mode mapping
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("\\<CR>")', {silent = true, script = true, expr = true})
-- vim.api.nvim_set_keymap('i', '<M-j>', '<Plug>(copilot-next)', {silent = true})
-- vim.api.nvim_set_keymap('i', '<M-k>', '<Plug>(copilot-prev)', {silent = true})

-- Set global variable
vim.g.copilot_no_tab_map = true
vim.g['copilot_assume_mapped'] = true

-- vim.keymap.set('i', '<C-a>', '<Plug>(copilot-next)')
-- vim.keymap.set('i', '<C-ö>', '<Plug>(copilot-previous)')
-- vim.keymap.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', { expr=true, silent = true })
