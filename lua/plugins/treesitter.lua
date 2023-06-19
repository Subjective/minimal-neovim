return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn"t work on Windows
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      config = function()
        require("nvim-treesitter.configs").setup {
          textobjects = {
            select = {
              enable = true,
              -- Automatically jump forward to textobj, similar to targets.vim
              lookahead = true,
              keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                ["as"] = {
                  query = "@scope",
                  query_group = "locals",
                  desc = "Select language scope",
                },
              },
              selection_modes = {
                ["@parameter.outer"] = "v", -- charwise
                ["@function.outer"] = "V",  -- linewise
                ["@class.outer"] = "<c-v>", -- blockwise
              },
              include_surrounding_whitespace = true,
            },
            move = {
              enable = true,
              set_jumps = true, -- whether to set jumps in the jumplist
              goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = { query = "@class.outer", desc = "Next class start" },
                --
                -- You can use regex matching and/or pass a list in a "query" key to group multiple queires.
                ["]o"] = "@loop.*",
                ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
                ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
              },
              goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
              },
              goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
              },
              goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
              },
              goto_next = {
                ["]d"] = "@conditional.outer",
              },
              goto_previous = {
                ["[d"] = "@conditional.outer",
              },
            },
          },
        }
      end,
    },
  },
  opts = {
    -- A list of parser names, or "all"
    ensure_installed = {},
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
  },
  config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
}
