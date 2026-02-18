return
{ 
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {},
  config = function()
    local catppuccin = require("catppuccin").setup({
      transparent_background = true,
    })
  end,

}
