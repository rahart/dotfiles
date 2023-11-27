require('telekasten').setup({
  extension = ".md",
  home = vim.fn.expand("/Users/travisharrington/Documents/kbt/kbt/"), -- Put the name of your notes directory here
  -- vaults = {
  --   personal = {
  --     home = "/home/travisharrington/org"
  --   }
  -- },
})
