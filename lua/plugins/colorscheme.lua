return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    integrations = {
      cmp = true,
      telescope = true,
      gitsigns = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      treesitter = true,
      mason = true,
      neotree = true,
      leap = true
    },
  },
}
