return {
  "nvim-treesitter/nvim-treesitter",
  config = function () 
    require("nvim-treesitter.configs").setup({
      ensured_installed = { "lua", "python", "javascript", "typescript", "html", "css", "json"},
      sync_install = true,
      additional_vim_regex_highlighting = false,
			highlight = { 
        enable = true,
      }
    })
  end
}
