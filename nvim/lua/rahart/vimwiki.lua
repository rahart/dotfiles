return {
  { "vimwiki/vimwiki", init = function()
      vim.g.vimwiki_list = {{
          path = "/Users/travisharrington/brain",
          syntax = "markdown",
          ext = ".md",
          links_space_char = "_",
          auto_diary_index = 1,
          diary_rel_path = "daylog/",
          diary_index = "daylog",
          diary_header = "Daylog",
      }}
      vim.g.vimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
        [".mdown"] = "markdown",
      }
    end
  }
}
