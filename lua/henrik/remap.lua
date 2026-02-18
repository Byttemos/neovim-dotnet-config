vim.g.mapleader = " "
vim.keymap.set("n", "H", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "L", vim.lsp.buf.hover, { desc = "Show hover information" })

-- Move selected lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

