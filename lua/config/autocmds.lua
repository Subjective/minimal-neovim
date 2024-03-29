local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Highlight on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank {}
  end,
})

-- Don't auto comment new lines
autocmd("FileType", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

-- Set line wrap and spelling for text files
autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
