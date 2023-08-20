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
    { "<C-n>",       "<cmd>GrappleCycle forward<CR>",                      desc = "Select next tag" },
    { "<C-p>",       "<cmd>GrappleCycle backward<CR>",                     desc = "Select previous tag" },
    { "<leader>1",   function() require("grapple").select { key = 1 } end, desc = "Grapple 1" },
    { "<leader>2",   function() require("grapple").select { key = 2 } end, desc = "Grapple 2" },
    { "<leader>3",   function() require("grapple").select { key = 3 } end, desc = "Grapple 3" },
    { "<leader>4",   function() require("grapple").select { key = 4 } end, desc = "Grapple 4" },
  },
}
