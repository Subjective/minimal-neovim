return {
  {
    "ggandor/leap.nvim",
    dependencies = {
      "tpope/vim-repeat",
    },
    keys = {
      { "s",  "<Plug>(leap-forward-to)",    mode = { "n" }, desc = "Leap forward to" },
      { "S",  "<Plug>(leap-backward-to)",   mode = { "n" }, desc = "Leap backward to" },
      { "z",  "<Plug>(leap-forward-to)",    mode = { "o" }, desc = "Leap forward to" },
      { "Z",  "<Plug>(leap-backward-to)",   mode = { "o" }, desc = "Leap backward to" },
      { "x",  "<Plug>(leap-forward-till)",  mode = { "o" }, desc = "Leap forward till" },
      { "X",  "<Plug>(leap-backward-till)", mode = { "o" }, desc = "Leap backward till" },
      { "gs", "<Plug>(leap-from-window)",   mode = { "n" }, desc = "Leap from window" },
    },
    opts = function()
      require("leap").add_repeat_mappings(";", ",", {
        relative_directions = true,
        modes = { "n" },
      })
      return {
        highlight_unlabeled_phase_one_targets = true,
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
