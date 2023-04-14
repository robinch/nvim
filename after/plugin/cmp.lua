local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	print("Could not find 'cmp'")
	return
end

cmp.setup {
	mapping = {
		['<C-g>'] = cmp.mapping(function(fallback)
			vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
		end)
	},
	experimental = {
		ghost_text = false -- this feature conflict with copilot.vim's preview.
	}
}
