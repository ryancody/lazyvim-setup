-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })

vim.keymap.set("n", "<F5>", function()
  local build = vim.fn.findfile("build.sh", ".;")
  if build ~= "" then
    vim.cmd("split | terminal bash " .. build)
  else
    vim.notify("No build.sh found in project", vim.log.levels.WARN)
  end
end, { desc = "Build project" })

vim.keymap.set("n", "<F9>", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "Step over" })
vim.keymap.set("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "Step into" })
vim.keymap.set("n", "<F12>", function()
  require("dap").continue()
end, { desc = "Continue" })
vim.keymap.set("n", "<F8>", function()
  require("dap").terminate()
end, { desc = "Stop debugger" })
