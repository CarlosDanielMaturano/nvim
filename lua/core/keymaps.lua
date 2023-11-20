local km = vim.keymap

vim.g.mapleader = " "
km.set("i", "jk", "<ESC>")
km.set("n", "dq", '"_daw')
km.set("n", "ss", ":w<Cr>")
km.set("n", "<ESC><ESC>", ":noh<CR>")
km.set("n", "<leader>u", vim.cmd.UndotreeToggle)
km.set("n", "<leader>e", ":NvimTreeToggle<CR>")
km.set("n", "<leader>n", ":bn<CR>")
km.set("n", "<leader>p", ":bp<CR>")
km.set("n", "dp", '"_diwP')
km.set("n", "yq", "yaw")
km.set("n", "<S-j>", "o<ESC>")
km.set("n", "du", '"_di"')
km.set("n", "do", "\"_di'")

km.set("n", "<C-j>", "<C-w>j")
km.set("n", "<C-h>", "<C-w>h")
km.set("n", "<C-l>", "<C-w>l")
km.set("n", "<C-k>", "<C-w>k")

-- Split window
km.set("n", "s-", ":split<Return><C-w>w", { silent = true })
km.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- vim fugitive
km.set("n", "<leader>gs", vim.cmd.Git)

km.set("n", "<C-n>", "<cmd>silent !tmux neww <CR>")
km.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer <CR>")
