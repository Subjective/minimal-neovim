local keymap = vim.keymap.set

-- Standard operations
keymap("n", "<leader>w", "<cmd>w<cr>")
keymap("n", "<leader>q", "<cmd>confirm q<cr>")
keymap("n", "<leader>c", "<cmd>confirm bdelete<cr>")
keymap("n", "<leader>n", "<cmd>enew<cr>")

-- Clear screen highlights and cmdline
keymap("n", "<ESC>", "<cmd>nohlsearch<cr>:<backspace>")

-- yanking, deleting, and pasting
keymap({ "n" }, [[y"]], function() vim.fn.setreg("+", vim.fn.getreg '"') end)
keymap({ "n", "x" }, "<leader>y", [["+y]])
keymap({ "n", "x" }, "<leader>Y", [["+y$]])
keymap({ "n", "x" }, "<leader>d", [["_d]])
keymap("x", "<leader>p", [["_dP]])

-- Move around splits
keymap("n", "<C-h>", "<C-w>h", {})
keymap("n", "<C-j>", "<C-w>j", {})
keymap("n", "<C-k>", "<C-w>k", {})
keymap("n", "<C-l>", "<C-w>l", {})

-- Buffer navigation
keymap("n", "[b", "<cmd>bprev<cr>")
keymap("n", "]b", "<cmd>bnext<cr>")
keymap("n", "<leader>`", "<cmd>e #<cr>")

-- Packages
keymap("n", "<leader>ps", function() require("lazy").home() end)
keymap("n", "<leader>pS", function() require("lazy").sync() end)
keymap("n", "<leader>pm", "<cmd>Mason<cr>")
keymap("n", "<leader>pM", "<cmd>MasonUpdateAll<cr>")

-- Telescope
keymap("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
keymap("n", "<leader>fo", function() require("telescope.builtin").oldfiles() end)
keymap("n", "<leader>fw", function() require("telescope.builtin").live_grep() end)
keymap("n", "<leader>f/", function() require("telescope.builtin").current_buffer_fuzzy_find() end)
keymap("n", "<leader>fb", function() require("telescope.builtin").buffers() end)
keymap("n", "<leader>fh", function() require("telescope.builtin").help_tags() end)

-- Git
keymap("n", "<leader>gb", function() require("telescope.builtin").git_branches() end)
keymap("n", "<leader>gc", function() require("telescope.builtin").git_commits() end)
keymap("n", "<leader>gs", function() require("telescope.builtin").git_status() end)

-- Move lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

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
