return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Make q close fugitive",
      group = vim.api.nvim_create_augroup("quit_fugitive", { clear = true }),
      pattern = { "fugitive", "fugitiveblame" },
      callback = function() vim.keymap.set("n", "q", "<Plug>fugitive:gq", { buffer = true }) end,
    })
  end,
}
