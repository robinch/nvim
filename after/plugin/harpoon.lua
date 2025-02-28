local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
	settings = {
		save_on_toggle = true,
		sync_on_ui_close = false,
	}
})
-- REQUIRED

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers").new({}, {
		prompt_title = "Harpoon",
		finder = require("telescope.finders").new_table({
			results = file_paths,
		}),
		previewer = conf.file_previewer({}),
		sorter = conf.generic_sorter({}),
	}):find()
end

vim.keymap.set("n", "<leader>ma", function() harpoon:list():add() end, { desc = "[A]dd mark to harpoon" })
vim.keymap.set("n", "<leader>mt", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
	{ desc = "[T]oggle quick harpoon quick menu" })
vim.keymap.set("n", "<leader>mf", function() toggle_telescope(harpoon:list()) end,
	{ desc = "[F]uzzy find using Telescope" })


vim.keymap.set("n", "<leader>m1", function() harpoon:list():select(1) end, { desc = "Goto mark [1]" })
vim.keymap.set("n", "<leader>m2", function() harpoon:list():select(2) end, { desc = "Goto mark [2]" })
vim.keymap.set("n", "<leader>m3", function() harpoon:list():select(3) end, { desc = "Goto mark [3]" })
vim.keymap.set("n", "<leader>m4", function() harpoon:list():select(4) end, { desc = "Goto mark [4]" })
vim.keymap.set("n", "<leader>m5", function() harpoon:list():select(5) end, { desc = "Goto mark [5]" })
vim.keymap.set("n", "<leader>m6", function() harpoon:list():select(6) end, { desc = "Goto mark [6]" })
vim.keymap.set("n", "<leader>m7", function() harpoon:list():select(7) end, { desc = "Goto mark [7]" })
vim.keymap.set("n", "<leader>m8", function() harpoon:list():select(8) end, { desc = "Goto mark [8]" })
vim.keymap.set("n", "<leader>m9", function() harpoon:list():select(9) end, { desc = "Goto mark [9]" })
vim.keymap.set("n", "<leader>m0", function() harpoon:list():select(10) end, { desc = "Goto mark 1[0]" })
