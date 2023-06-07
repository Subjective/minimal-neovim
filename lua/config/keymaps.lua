-- Standard operations
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>confirm q<cr>")
vim.keymap.set("n", "<leader>c", "<cmd>confirm bdelete<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>enew<cr>")

-- Move around splits
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Packages
vim.keymap.set("n", "<leader>ps", function() require("lazy").home() end)
vim.keymap.set("n", "<leader>pS", function() require("lazy").sync() end)
vim.keymap.set("n", "<leader>pm", "<cmd>Mason<cr>")
vim.keymap.set("n", "<leader>pM", "<cmd>MasonUpdateAll<cr>")

-- Telescope
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>")

-- Comment
vim.keymap.set(
  "n",
  "<leader>/",
  function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end
)
vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")

-- Undotree
vim.keymap.set("n", "<leader>U", "<cmd>UndotreeToggle<cr>")
