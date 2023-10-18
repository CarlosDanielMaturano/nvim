local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  {
    import = "lazy.plugins.ui",
    change_detection = {
      notify = false,
    },
  },
  {
    import = "lazy.plugins.utils",
    change_detection = {
      notify = false,
    },
  },
  {
    import = "lazy.plugins.code",
    change_detection = {
      notify = false,
    },
  },
  {
    import = "lazy.plugins.lsp",
    change_detection = {
      notify = false,
    },
  },
})
