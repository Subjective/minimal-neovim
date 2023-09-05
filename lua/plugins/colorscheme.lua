return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  init = function() vim.cmd.colorscheme "catppuccin" end,
  opts = {
    integrations = {
      cmp = true,
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
    },
    custom_highlights = function(colors)
      return {
        -- lightspeed-style highlighting for leap
        LeapBackdrop = { link = "Comment" },
        LeapMatch = { fg = colors.text, style = { "bold" } },
        LeapLabelPrimary = { fg = colors.pink, style = { "bold" } },
        LeapLabelSecondary = { fg = colors.blue, style = { "bold" } },
      }
    end,
  },
}
