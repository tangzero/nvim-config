-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "gdscript",
      "gdshader",
      "go",
      "godot_resource",
      "jsonc",
      "lua",
      "rust",
      "vim",
      "yaml",
      "zig",
    },
  },
}
