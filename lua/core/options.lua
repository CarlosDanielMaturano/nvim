local opt = vim.opt

opt.number = true
opt.relativenumber = true

local default_ident_size = 2

opt.tabstop = default_ident_size
opt.shiftwidth = default_ident_size

opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.guicursor = ""
opt.mouse = ""

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.background = "dark"

--opt.cursorline = true

opt.signcolumn = "no"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.fillchars:append({ eob = "~" })
vim.cmd([[
  set fillchars+=vert:\|
]])
opt.colorcolumn = "81"

opt.swapfile = false
