-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

local setup_godot_dap = function()
  local dap = require "dap"

  dap.adapters.godot = {
    type = "server",
    host = "127.0.0.1",
    port = 6006,
  }

  dap.configurations.gdscript = {
    {
      launch_game_instance = false,
      launch_scene = false,
      name = "Launch scene",
      project = "${workspaceFolder}",
      request = "launch",
      type = "godot",
    },
  }
end

setup_godot_dap()
