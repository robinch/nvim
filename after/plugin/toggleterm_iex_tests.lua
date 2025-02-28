local prev_cmd = ""

local function term_exec(command, overwrite_prev_cmd)
  if overwrite_prev_cmd then
    prev_cmd = command
  end

  vim.cmd(string.format("TermExec cmd='%s'", command))
end

local function start_iex_test()
  term_exec('MIX_ENV=test iex -S mix')
end

local function test_current_file()
  local current_file = vim.fn.expand("%:p")
  local cmd = string.format('IexTests.test("%s")', current_file)
  term_exec(cmd, true)
end

local function test_current_line()
  local current_file = vim.fn.expand("%:p")
  local current_line = vim.fn.line(".")
  local cmd = string.format('IexTests.test("%s", %d)', current_file, current_line)
  term_exec(cmd, true)
end

local function test_current_directory()
  local file_dir = vim.fn.expand("%:p:h")
  local cmd = string.format('IexTests.test("%s")', file_dir)
  term_exec(cmd, true)
end

local function rerun_previous_test()
  term_exec(prev_cmd)
end

local function watch_current_file()
  local current_file = vim.fn.expand("%:p")
  local cmd = string.format('IexTests.test_watch("%s")', current_file)
  term_exec(cmd)
end


local function stop_watching_current_file()
  term_exec('IexTests.stop_watch()')
end


vim.keymap.set("n", "<leader>ts", start_iex_test, { desc = "[S]tart iex for test" })
vim.keymap.set("n", "<leader>tf", test_current_file, { desc = "Test current [f]ile" })
vim.keymap.set("n", "<leader>tl", test_current_line, { desc = "Test current [l]ine" })
vim.keymap.set("n", "<leader>td", test_current_directory, { desc = "Test current file [d]irectory" })
vim.keymap.set("n", "<leader>tr", rerun_previous_test, { desc = "[R]e-run previous test Command" })
vim.keymap.set("n", "<leader>tw", watch_current_file, { desc = "[W]atch current file" })
vim.keymap.set("n", "<leader>tq", stop_watching_current_file, { desc = "Stop watching current file" })
