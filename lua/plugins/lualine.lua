return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
  opts = {
    options = {
      theme = "catppuccin",
    },
    sections = {
      lualine_c = {
        {
          function()
            local key = require("grapple").key()
            return " " .. key
          end,
          cond = require("grapple").exists,
        },
        'filename'
      },
    },
    extensions = { "neo-tree", "lazy", "fugitive" },
  }
}
