local prefix = "<leader><leader>"
return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "Harpoon" },
  keys = {
    { prefix,        desc = "Harpoon" },
    { prefix .. "a", function() require("harpoon.mark").add_file() end },
    { prefix .. "e", function() require("harpoon.ui").toggle_quick_menu() end },
    { "<C-p>",       function() require("harpoon.ui").nav_prev() end },
    { "<C-n>",       function() require("harpoon.ui").nav_next() end },
    { "<leader>1",   function() require("harpoon.ui").nav_file(1) end },
    { "<leader>2",   function() require("harpoon.ui").nav_file(2) end },
    { "<leader>3",   function() require("harpoon.ui").nav_file(3) end },
    { "<leader>4",   function() require("harpoon.ui").nav_file(4) end },
    { prefix .. "m", "<cmd>Telescope harpoon marks<CR>" },
    {
      prefix .. "t",
      function()
        local num = tonumber(vim.fn.input "GoTo terminal window number: ")
        require("harpoon.term").gotoTerminal(num)
      end,
      desc = "Goto to terminal window",
    },
    {
      prefix .. "j",
      function()
        local num = tonumber(vim.fn.input "GoTo Tmux window number: ")
        require("harpoon.tmux").gotoTerminal(num)
      end,
      desc = "Goto to TMUX tmux window",
    },
  },
}
