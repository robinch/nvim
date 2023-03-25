local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ma", mark.add_file, {desc = "[A]dd mark to harpoon"})
vim.keymap.set("n", "<leader>mt", ui.toggle_quick_menu, {desc = "[T]oggle quick harpoon quick menu"})

vim.keymap.set("n", "<leader>m1", function() ui.nav_file(1) end, {desc = "Goto mark [1]"})
vim.keymap.set("n", "<leader>m2", function() ui.nav_file(2) end, {desc = "Goto mark [2]"})
vim.keymap.set("n", "<leader>m3", function() ui.nav_file(3) end, {desc = "Goto mark [3]"})
vim.keymap.set("n", "<leader>m4", function() ui.nav_file(4) end, {desc = "Goto mark [4]"})
vim.keymap.set("n", "<leader>m5", function() ui.nav_file(5) end, {desc = "Goto mark [5]"})
