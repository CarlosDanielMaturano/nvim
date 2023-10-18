return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      enable_rename = false,
      enable_close_on_slash = false,
    })
  end,
}
