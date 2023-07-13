return {
  "ggandor/leap.nvim",
  dependencies = {
    "tpope/vim-repeat",
  },
  keys = {
    { "s",  "<Plug>(leap-forward-to)",    mode = { "n", "x", "o" }, desc = "Leap forward to" },
    { "S",  "<Plug>(leap-backward-to)",   mode = { "n", "x", "o" }, desc = "Leap backward to" },
    { "x",  "<Plug>(leap-forward-till)",  mode = { "x", "o" },      desc = "Leap forward till" },
    { "X",  "<Plug>(leap-backward-till)", mode = { "x", "o" },      desc = "Leap backward till" },
    { "zS", "<Plug>(leap-from-window)",   mode = { "n", "x", "o" }, desc = "Leap from window" },
  },
  opts = function()
    require("leap").add_repeat_mappings(";", ",", {
      relative_directions = true,
      modes = { "n", "x", "o" },
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
}
