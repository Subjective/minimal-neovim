return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  config = function() vim.cmd.colorscheme "catppuccin" end,
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
      leap = true,
    },
  },
}
