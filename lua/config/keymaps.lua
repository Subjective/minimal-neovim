local keymap = vim.keymap.set

-- Standard operations
keymap("n", "<leader>w", "<cmd>w<cr>")
keymap("n", "<leader>q", "<cmd>confirm q<cr>")
keymap("n", "<leader>c", "<cmd>confirm bdelete<cr>")
keymap("n", "<leader>n", "<cmd>enew<cr>")

-- Move around splits
keymap("n", "<C-h>", "<C-w>h", {})
keymap("n", "<C-j>", "<C-w>j", {})
keymap("n", "<C-k>", "<C-w>k", {})
keymap("n", "<C-l>", "<C-w>l", {})

-- Buffer navigation
keymap("n", "[b", "<cmd>bprev<cr>")
keymap("n", "]b", "<cmd>bnext<cr>")

-- Packages
keymap("n", "<leader>ps", function() require("lazy").home() end)
keymap("n", "<leader>pS", function() require("lazy").sync() end)
keymap("n", "<leader>pm", "<cmd>Mason<cr>")
keymap("n", "<leader>pM", "<cmd>MasonUpdateAll<cr>")

-- Telescope
local builtin = require "telescope.builtin"
keymap("n", "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>fo", builtin.oldfiles, {})
keymap("n", "<leader>fw", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})
keymap("n", "<leader>fh", builtin.help_tags, {})

-- Move lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Neo-tree
keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>")

-- Comment
keymap(
  "n",
  "<leader>/",
  function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end
)
keymap("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")

-- Undotree
keymap("n", "<leader>U", "<cmd>UndotreeToggle<cr>")
