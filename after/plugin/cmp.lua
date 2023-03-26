local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	print("Could not find 'cmp'")
	return
end

-- cmp.setup {
-- 	completion = {
-- 		autocomplete = false,
-- 	},
-- 	experimental = {
-- 		ghost_lines = false,
-- 	},
-- }
