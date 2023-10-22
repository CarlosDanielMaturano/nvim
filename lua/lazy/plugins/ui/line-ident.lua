return {
  "lukas-reineke/indent-blankline.nvim",
  priority = 1000,
  config = function()
    require("ibl").setup({
      --indent = { char = "│" },
      indent = { char = "" },
      whitespace = {
        remove_blankline_trail = true,
      },
      scope = { enabled = false },
    })
  end,
}
