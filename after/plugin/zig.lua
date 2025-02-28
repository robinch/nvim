-- Ensure that 'w' don't jump over ;
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zig",
  callback = function()
    vim.schedule(function()
      vim.opt_local.iskeyword:append(";")  -- Ensure `;` is part of a word
    end)
  end,
})

-- Format on save disabled
vim.g.zig_fmt_autosave = 0
