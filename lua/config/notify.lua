-- %LOCALAPPDATA%\nvim\lua\config\notify.lua
local ok, notify = pcall(require, "notify")
if ok then
  notify.setup({
    timeout = 12000, -- ms (8 seconds). set to 0 to never expire
    stages = "fade",
  })
end
