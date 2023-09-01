local keymap = vim.keymap.set

-- Standard operations
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
keymap("n", "<leader>q", "<cmd>confirm q<cr>", { desc = "Quit" })
keymap("n", "<leader>c", "<cmd>confirm bdelete<cr>", { desc = "Close buffer" })
keymap("n", "<leader>n", "<cmd>enew<cr>", { desc = "New file" })

-- Clear screen highlights and cmdline
keymap("n", "<ESC>", "<cmd>nohlsearch<cr>:<backspace>")

-- yanking, deleting, and pasting
keymap({ "n" }, [[y"]], function() vim.fn.setreg("+", vim.fn.getreg '"') end)
keymap({ "n", "x" }, "<leader>y", [["+y]])
keymap({ "n", "x" }, "<leader>Y", [["+y$]])
keymap({ "n", "x" }, "<leader>d", [["_d]])
keymap("x", "<leader>p", [["_dP]])

-- Buffer navigation
keymap("n", "[b", "<cmd>bprev<cr>")
keymap("n", "]b", "<cmd>bnext<cr>")
keymap("n", "<leader>`", "<cmd>e #<cr>", { desc = "Previous buffer" })

-- Packages
keymap("n", "<leader>ps", function() require("lazy").home() end, { desc = "Plugins status" })
keymap("n", "<leader>pS", function() require("lazy").sync() end, { desc = "Plugins sync" })
keymap("n", "<leader>pm", "<cmd>Mason<cr>", { desc = "Mason" })
keymap("n", "<leader>pM", "<cmd>MasonUpdateAll<cr>", { desc = "Mason update" })

-- Telescope
keymap("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find files" })
keymap("n", "<leader>fo", function() require("telescope.builtin").oldfiles() end, { desc = "Find history" })
keymap("n", "<leader>fw", function() require("telescope.builtin").live_grep() end, { desc = "Find words" })
keymap(
  "n",
  "<leader>f/",
  function() require("telescope.builtin").current_buffer_fuzzy_find() end,
  { desc = "Find words in current buffer" }
)
keymap("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Find buffers" })
keymap("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Find help" })

-- Git
keymap("n", "<leader>gb", function() require("telescope.builtin").git_branches() end, { desc = "Git branches" })
keymap("n", "<leader>gc", function() require("telescope.builtin").git_commits() end, { desc = "Git commits" })
keymap("n", "<leader>gs", function() require("telescope.builtin").git_status() end, { desc = "Git status" })

-- Move lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Neo-tree
keymap("n", "<leader>e", "<cmd>Neotree toggle float<cr>", { desc = "Toggle explorer" })
keymap("n", "<c-n>", "<cmd>Neotree toggle left show<cr>", { desc = "Toggle explorer" })

-- Comment
keymap(
  "n",
  "<leader>/",
  function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
  { desc = "Toggle comment line" }
)
keymap(
  "v",
  "<leader>/",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = "Toggle comment line" }
)

-- Undotree
keymap("n", "<leader>U", "<cmd>UndotreeToggle<cr>", { desc = "Toggle Undo Tree" })
