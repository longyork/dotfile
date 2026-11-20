return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      "c_sharp",
      "css",
      "json",
      "lua"
    },
    highlight = { enable = true },
    indent = { enable = true },
  }
}
