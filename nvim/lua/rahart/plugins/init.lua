return {
  -- Theme
  -- "folke/tokyonight.nvim",
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
        disable_background = true,
      }
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end
  },

  "tpope/vim-fugitive",
  "tpope/vim-surround",
  "christoomey/vim-tmux-navigator",
  "ThePrimeagen/harpoon",
  "nvim-lua/popup.nvim",
  "jremmen/vim-ripgrep",
  "github/copilot.vim",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },


  -- notes
  -- use {'nvim-orgmode/orgmode', config = function()
  --   require('orgmode').setup{}
  -- end
  -- }
  -- use {
  --   'renerocksai/telekasten.nvim',
  --   requires = {'nvim-telescope/telescope.nvim'}
  -- }
}
