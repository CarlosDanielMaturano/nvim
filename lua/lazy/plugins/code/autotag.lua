return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      filetypes = { "html", "xml", "jsx", "tsx" },
      enable_rename = false,
      enable_close_on_slash = true,
    })
  end,
}
