return {
  "nvim-lua/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
      },
    },
    config = function ()
      local actions = require "telescope.actions"

      require('telescope').setup{
        defaults = {
          mappings = {
            i = {
              ["<C-g>"] = actions.select_default,
              ["<CR>"] = actions.select_default,
            },
            n = {
              ["<C-g>"] = actions.select_default,
              ["<CR>"] = actions.select_default,
            }
          }
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_move = "smart_case",
          }
        }
      }
      require('telescope').load_extension('fzf')

      local mappings = {}
      mappings.curr_buf = function ()
        local opt = require("telescope.themes").get_ivy()
        require("telescope.builtin").current_buffer_fuzzy_find(opt)
      end

      mappings.python = function () require("telescope.builtin").find_files({cwd="/home/hex/py/"}) end
      mappings.nvim = function () require("telescope.builtin").find_files({cwd="/home/hex/.config/nvim/"}) end

      return mappings
    end
}


-- if not pcall(require, "telescope") then
--   return
-- end
--
-- local actions = require "telescope.actions"
--
-- require('telescope').setup{
--   defaults = {
--     mappings = {
--       i = {
--         ["<C-g>"] = actions.select_default,
--         ["<cr>"] = actions.select_default,
--       },
--       n = {
--         ["<C-g>"] = actions.select_default,
--         ["<cr>"] = actions.select_default,
--       }
--     }
--   },
--   extensions = {
--     fzf = {
--       fuzzy = true,
--       override_generic_sorter = true,
--       override_file_sorter = true,
--       case_move = "smart_case",
--     }
--   }
-- }
--
-- require('telescope').load_extension('fzf')
--
-- local mappings = {}
-- mappings.curr_buf = function ()
--   local opt = require("telescope.themes").get_ivy()
--   require("telescope.builtin").current_buffer_fuzzy_find(opt)
-- end
--
-- mappings.python = function () require("telescope.builtin").find_files({cwd="/home/hex/py/"}) end
-- mappings.nvim = function () require("telescope.builtin").find_files({cwd="/home/hex/.config/nvim/"}) end
-- return mappings
