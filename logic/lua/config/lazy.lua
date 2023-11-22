local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- print("Lazy install dir: " .. lazypath)

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
    -- { import = "plugins.lsp.lsp-zero" },
    { import = "plugins.lsp.coq" },
    { import = "plugins.dap.dap" },
  },
  install = {
    colorscheme = { "catppuccin-macchiato" },
  },
})
