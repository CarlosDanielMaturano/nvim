return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "javascript", "typescript", "html", "css", "json", "bash", "rust" },

      sync_install = true,
      additional_vim_regex_highlighting = false,
      highlight = {
        enable = true,
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = false,
        enable_close_on_slash = false,
      },
      auto_install = true,
      indent = {
        enable = true,
      },
    })
  end,
}
