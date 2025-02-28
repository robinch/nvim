-- Overwrites formatoptions to not add comments on new line after a comment

vim.opt.formatoptions:remove { "c", "r", "o" }

