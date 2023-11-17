return {
  "nvim-tree/nvim-tree.lua",
  priority = 1000,
  config = function()
    -- Disable newtrw default file explorer
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        adaptive_size = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = false,
      },
    })
  end,
}
