local options = {
  opt = {
    breakindent = true,                              -- Wrap indent to match  line start
    clipboard = "",                                  -- Set default clipboard for yanking and deleting
    completeopt = { "menu", "menuone", "noselect" }, -- Options for insert mode completion
    copyindent = true,                               -- Copy the previous indentation on autoindenting
    cursorline = true,                               -- Highlight the text line of the cursor
    cursorlineopt = "number",                        -- Highlight the current line number
    expandtab = true,                                -- Enable the use of space in tab
    fillchars = { eob = " " },                       -- Disable `~` on nonexistent lines
    foldenable = true,                               -- enable fold for nvim-ufo
    foldmethod = "marker",                           -- enable folding triggered by markers ({{{)
    foldlevel = 99,                                  -- set high foldlevel for nvim-ufo
    foldlevelstart = 99,                             -- start with all code unfolded
    foldcolumn = "1",                                -- show foldcolumn in nvim 0.9
    history = 100,                                   -- Number of commands to remember in a history table
    ignorecase = true,                               -- Case insensitive searching
    infercase = true,                                -- Infer cases in keyword completion
    laststatus = 3,                                  -- globalstatus
    linebreak = true,                                -- Wrap lines at 'breakat'
    mouse = "a",                                     -- Enable mouse support
    number = true,                                   -- Show numberline
    preserveindent = true,                           -- Preserve indent structure as much as possible
    pumheight = 10,                                  -- Height of the pop up menu
    relativenumber = true,                           -- Show relative numberline
    scrolloff = 8,                                   -- Number of lines to keep above and below the cursor
    shiftwidth = 2,                                  -- Number of space inserted for indentation
    showmode = false,                                -- Disable showing modes in command line
    showtabline = 1,                                 -- Automatically display tabline
    sidescrolloff = 8,                               -- Number of columns to keep at the sides of the cursor
    signcolumn = "yes",                              -- Always show the sign column
    smartcase = true,                                -- Case sensitive searching
    smartindent = true,                              -- Smarter autoindentation
    splitbelow = true,                               -- Splitting a new window below the current one
    splitright = true,                               -- Splitting a new window at the right of the current one
    tabstop = 2,                                     -- Number of space in a tab
    termguicolors = true,                            -- Enable 24-bit RGB color in the TUI
    timeoutlen = 400,                                -- Shorten key timeout length a little bit for which-key
    undofile = true,                                 -- Enable persistent undo
    updatetime = 250,                                -- Length of time to wait before triggering the plugin
    virtualedit = "block",                           -- Allow going past end of line in visual block mode
    swapfile = false,                                -- Disable swapfile
    wrap = false,                                    -- Disable wrapping of lines longer than the width of window
    writebackup = false,                             -- Disable making a backup before overwriting a file
    splitkeep = "screen",                            -- Stabilize buffer content on window open/close events
    shm = vim.opt.shm + "sI",                        -- Disable neovim start screen
  },
}

for scope, table in pairs(options) do
  for setting, value in pairs(table) do
    vim[scope][setting] = value
  end
end
