return {
	"lukas-reineke/indent-blankline.nvim",
	priority = 1000,
	config = function()
		require("ibl").setup({
        indent = { highlight = highlight, char = "│" },
        whitespace = {
          highlight = highlight,
          remove_blankline_trail = true,
        },
        scope = { enabled = false },
      })
	end,
}
