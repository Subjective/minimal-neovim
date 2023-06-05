local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- General settings

-- Highlight on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank {}
  end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
  pattern = "",
  command = ":%s/\\s\\+$//e",
})

-- Auto format on save using the attached (optionally filtered) language server clients
-- https://neovim.io/doc/user/lsp.html#vim.lsp.buf.format()
autocmd("BufWritePre", {
  pattern = "",
  command = ":silent lua vim.lsp.buf.format()",
})

-- Don't auto comment new lines
autocmd("FileType", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
