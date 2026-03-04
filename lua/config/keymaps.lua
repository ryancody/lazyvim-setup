-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- F5: build dotnet then run Godot (in a terminal)
vim.keymap.set("n", "<F5>", function()
  -- Adjust these:
  local dotnet_cmd = "dotnet build"
  local godot_cmd = [[godot --path .]] -- or your full path to Godot.exe

  -- Use a login shell so PATH works (esp. on Windows/Git Bash setups)
  local cmd = dotnet_cmd .. " && " .. godot_cmd

  -- LazyVim ships Snacks.terminal (newer) and often ToggleTerm too.
  -- Try Snacks first.
  local ok, snacks = pcall(require, "snacks")
  if ok and snacks.terminal then
    snacks.terminal.open(cmd, { title = "F5: build + run", focus = true })
    return
  end

  -- Fallback: built-in terminal split
  vim.cmd("botright split | resize 15 | terminal " .. cmd)
end, { desc = "Build (dotnet) + Run (Godot)" })
