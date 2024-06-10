-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "go",
      "jsonc",
      "lua",
      "rust",
      "vim",
      "yaml",
      "zig",
    },
  },
}
