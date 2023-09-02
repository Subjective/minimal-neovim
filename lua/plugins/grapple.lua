local prefix = "<leader><leader>"
return {
  "cbochs/grapple.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "Grapple" },
  keys = {
    { prefix .. "a", "<cmd>GrappleTag<CR>",                                desc = "Add file" },
    { prefix .. "d", "<cmd>GrappleUntag<CR>",                              desc = "Remove file" },
    { prefix .. "t", "<cmd>GrappleToggle<CR>",                             desc = "Toggle a file" },
    { prefix .. "e", "<cmd>GrapplePopup tags<CR>",                         desc = "Select from tags" },
    { prefix .. "s", "<cmd>GrapplePopup scopes<CR>",                       desc = "Select a project scope" },
    { prefix .. "x", "<cmd>GrappleReset<CR>",                              desc = "Clear tags from current project" },
    { "<leader>'",   "<cmd>GrappleToggle<cr>",                             desc = "Toggle file tag" },
    { "<c-'>",       "<cmd>GrapplePopup tags<CR>",                         desc = "Select from tags" },
    { "<c-p>",       "<cmd>GrapplePopup tags<cr>",                         desc = "Toggle file tag" },
    { "<c-j>",       function() require("grapple").select { key = 1 } end, desc = "Go to Grapple tag 1" },
    { "<c-k>",       function() require("grapple").select { key = 2 } end, desc = "Go to Grapple tag 2" },
    { "<c-l>",       function() require("grapple").select { key = 3 } end, desc = "Go to Grapple tag 3" },
    { "<c-;>",       function() require("grapple").select { key = 4 } end, desc = "Go to Grapple tag 4" },
  },
}
