return {
    "nvim-tree/nvim-tree.lua",
    config = function ()
      local setup, nvimtree = pcall(require, "nvim-tree")
      if not setup then
        return
      end

      -- recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- change color for arrows in tree to light blue
      vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

      -- configure nvim-tree
      nvimtree.setup({
        renderer = {
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "", -- arrow when folder is closed
                arrow_open = "", -- arrow when folder is open
              },
            },
          },
        },
      })
    end
}
