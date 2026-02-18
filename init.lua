require("henrik")
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    vim.cmd("checktime")
  end,
})

-- Theme persistence
local theme_file = vim.fn.stdpath("config") .. "/last_theme.txt"
local last_theme = "tokyonight" -- Default theme

if vim.fn.filereadable(theme_file) == 1 then
  local content = vim.fn.readfile(theme_file)
  if #content > 0 then
    last_theme = content[1]
  end
end

vim.cmd("colorscheme " .. last_theme)

-- Save default theme if file doesn't exist
if vim.fn.filereadable(theme_file) == 0 then
  vim.fn.writefile({last_theme}, theme_file)
end

-- Line numbering based on mode
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

