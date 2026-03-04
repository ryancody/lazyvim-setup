-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<F5>", function()
  vim.cmd("w") -- save current file
  vim.cmd("terminal dotnet build && /c/godot/editors/Godot_v4.6-stable_mono_win64/Godot_v4.stable_mono_win64")
end, { desc = "Build + Run Godot" })
