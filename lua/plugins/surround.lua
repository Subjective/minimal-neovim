return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  opts = {
    keymaps = {
      insert = "<C-g>s",
      insert_line = "<C-g>Z",
      normal = "ys",
      normal_cur = "yss",
      normal_line = "yZ",
      normal_cur_line = "yZZ",
      visual = "Z",
      visual_line = "gZ",
      delete = "ds",
      change = "cs",
    },
  }
}
