if vim.fn.has "nvim-0.8" == 0 then error "Need Neovim 0.8+ in order to use this config" end

for _, cmd in ipairs { "git", "rg", { "fd", "fdfind" } } do
  local name = type(cmd) == "string" and cmd or vim.inspect(cmd)
  local commands = type(cmd) == "string" and { cmd } or cmd
  ---@cast commands string[]
  local found = false

  for _, c in ipairs(commands) do
    if vim.fn.executable(c) == 1 then
      name = c
      found = true
    end
  end

  if not found then error(("`%s` is not installed"):format(name)) end
end

-- Load config
local modules = { "config.options", "config.autocmds", "config.lazy", "config.keymaps" }

for _, mod in ipairs(modules) do
  local ok, err = pcall(require, mod)
  if not ok then
    error(("Error loading %s...\n\n%s"):format(mod, err))
  end
end
