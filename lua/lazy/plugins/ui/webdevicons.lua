return {
  "nvim-tree/nvim-web-devicons",
  priority = 1000,
  config = function () 
    require("nvim-web-devicons").setup({
      [".gitignore"] = {
        icon = "",
        color = "#f1502f",
        name = "Gitignore"
     }
    })
  end
}
