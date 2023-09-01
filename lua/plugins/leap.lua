return {
  {
    "ggandor/leap.nvim",
    dependencies = {
      "tpope/vim-repeat",
    },
    keys = {
      { "s",  "<Plug>(leap-forward-to)",  mode = { "n" }, desc = "Leap forward to" },
      { "S",  "<Plug>(leap-backward-to)", mode = { "n" }, desc = "Leap backward to" },
      { "gs", "<Plug>(leap-from-window)", mode = { "n" }, desc = "Leap from window" },
    },
    opts = function()
      require("leap").add_repeat_mappings(";", ",", {
        relative_directions = true,
        modes = { "n" },
      })
      return {
        highlight_unlabeled_phase_one_targets = true,
        special_keys = {
          next_target = ";",
          prev_target = ",",
          next_group = "<space>",
          prev_group = "<tab>",
          multi_accept = "<enter>",
          multi_revert = "<backspace>",
        },
      }
    end,
  },
  {
    "ggandor/flit.nvim",
    dependencies = { "ggandor/leap.nvim" },
    keys = {
      { "f", mode = { "n", "x", "o" }, desc = "Flit forward to" },
      { "F", mode = { "n", "x", "o" }, desc = "Flit backward to" },
      { "t", mode = { "n", "x", "o" }, desc = "Flit forward till" },
      { "T", mode = { "n", "x", "o" }, desc = "Flit backward till" },
    },
    opts = {
      labeled_modes = "nx",
    },
  },
}
