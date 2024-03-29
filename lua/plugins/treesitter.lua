return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn"t work on Windows
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "RRethy/nvim-treesitter-textsubjects",
    },
  },
  opts = {
    -- A list of parser names, or "all"
    ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "swift",
      "html",
      "css",
      "cpp",
      "python",
      "java",
      "bash",
      "markdown",
      "markdown_inline",
      "regex",
      "vim",
      "latex",
      "tsx",
      "diff",
      "git_rebase",
      "gitcommit",
      "git_config",
      "gitignore",
    },
    auto_install = vim.fn.executable "tree-sitter" == 1,
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
    refactor = {
      highlight_definitions = {
        enable = true,
      },
      highlight_current_scope = {
        enable = false,
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["ak"] = "@block.outer",
          ["ik"] = "@block.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["a?"] = "@conditional.outer",
          ["i?"] = "@conditional.inner",
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]k"] = { query = "@block.outer", desc = "Next block start" },
          ["]c"] = { query = "@class.outer", desc = "Next class start" },
          ["]f"] = { query = "@function.outer", desc = "Next function start" },
          ["]a"] = { query = "@parameter.outer", desc = "Next parameter start" },
        },
        goto_next_end = {
          ["]k"] = { query = "@block.outer", desc = "Next block end" },
          ["]c"] = { query = "@class.outer", desc = "Next class end" },
          ["]f"] = { query = "@function.outer", desc = "Next function end" },
          ["]a"] = { query = "@parameter.outer", desc = "Next parameter end" },
        },
        goto_previous_start = {
          ["[k"] = { query = "@block.outer", desc = "Previous block start" },
          ["[c"] = { query = "@class.outer", desc = "Previous class start" },
          ["[f"] = { query = "@function.outer", desc = "Previous function start" },
          ["[a"] = { query = "@parameter.outer", desc = "Previous parameter start" },
        },
        goto_previous_end = {
          ["[K"] = { query = "@block.outer", desc = "Previous block end" },
          ["[C"] = { query = "@class.outer", desc = "Previous class end" },
          ["[F"] = { query = "@function.outer", desc = "Previous function end" },
          ["[A"] = { query = "@parameter.outer", desc = "Previous parameter end" },
        },
      },
      swap = {
        enable = true,
        swap_next = {
          [">K"] = { query = "@block.outer", desc = "Swap next block" },
          [">F"] = { query = "@function.outer", desc = "Swap next function" },
          [">A"] = { query = "@parameter.inner", desc = "Swap next parameter" },
        },
        swap_previous = {
          ["<K"] = { query = "@block.outer", desc = "Swap previous block" },
          ["<F"] = { query = "@function.outer", desc = "Swap previous function" },
          ["<A"] = { query = "@parameter.inner", desc = "Swap previous parameter" },
        },
      },
    },
    textsubjects = {
      enable = true,
      prev_selection = ",", -- (Optional) keymap to select the previous selection
      keymaps = {
        ["."] = "textsubjects-smart",
        [";"] = "textsubjects-container-outer",
        ["i;"] = "textsubjects-container-inner",
      },
    },
  },
  config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
}
