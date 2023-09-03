return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      follow_current_file    = true,
      hijack_netrw_behavior  = "open_current",
      use_libuv_file_watcher = true,
    },
    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added     = "",  -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified  = "",  -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "✖", -- this can only be used in the git_status source
          renamed   = "➜", -- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "",
          conflict  = "",
        }
      }
    },
    commands = {
      parent_or_close = function(state)
        local node = state.tree:get_node()
        if (node.type == "directory" or node:has_children()) and node:is_expanded() then
          state.commands.toggle_node(state)
        else
          require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
        end
      end,
      child_or_open = function(state)
        local node = state.tree:get_node()
        if node.type == "directory" or node:has_children() then
          if not node:is_expanded() then -- if unexpanded, expand
            state.commands.toggle_node(state)
          else                           -- if expanded and has children, seleect the next child
            require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
          end
        else -- if not a directory just open it
          state.commands.open(state)
        end
      end,
    },
    window = {
      width = 30,
      mappings = {
        h = "parent_or_close",
        l = "child_or_open",
      },
      fuzzy_finder_mappings = {
        ["<C-j>"] = "move_cursor_down",
        ["<C-k>"] = "move_cursor_up",
      },
    },
  },
}
