return
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
      {"<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      { "<leader>fs", "<CMD>:w<CR>", desc = "Save File" },

      -- git
      { "<leader>g", "", desc = "+Git Version Control"},

      -- Project management
      {"<leader>p", "", desc = "+Project Management"},
      {"<leader>po", "<cmd>AerialNavToggle<cr>", desc = "Toggle Project Outline"},

      -- Window management
      { "<leader>w", "", desc = "+Window management" },
      { "<leader>wv", "<cmd>vsplit<cr>", desc = "Split window vertically"},
      { "<leader>ws", "<cmd>split<cr>", desc = "Split window horizontally"},
      { "<leader>wq", "<cmd>quit<cr>", desc = "Quit the focused window"},
      { "<leader>wf", "<cmd>only<cr>", desc = "Quit all but the focused window"},
      { "<leader>ww", "<cmd>wincmd w<cr>", desc = "Cycle between open windows"},
      { "<leader>wx", "<cmd>wincmd x<cr>", desc = "Swap places between windows"},
      { "<leader>wh", "<cmd>wincmd H<cr>", desc = "Move focused window left"},
      { "<leader>wj", "<cmd>wincmd J<cr>", desc = "Move focused window down"},
      { "<leader>wk", "<cmd>wincmd K<cr>", desc = "Move focused window up"},
      { "<leader>wl", "<cmd>wincmd L<cr>", desc = "Move focused window right"},

      -- Terminal
      { "<leader>t", "", desc = "+Terminal"},
      { "<leader>tt", "<cmd>FloatermNew<cr>", desc = "Create New Floating Terminal"},
      { "<leader>tt", "<cmd>FloatermToggle<cr>", desc = "Toggle Floating Terminal"},
      { "<leader>tl", "<cmd>FloatermSend! --name=Line_Execute<cr>", desc = "Execute Line in Terminal"},
      { "<leader>ts", "<cmd>'<,'>FloatermSend!<cr>", desc = "Execute Selection in Terminal"},
      { "<leader>tb", "<cmd>%FloatermSend!<cr>", desc = "Execute Buffer in Terminal"},

  },
}
