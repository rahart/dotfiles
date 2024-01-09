return {
  "numToStr/Comment.nvim",
  config = function()
  local setup, comment = pcall(require, "Comment")
  if not setup then
    return
  end

  comment.setup{
    opleader = {
      line = "gc",
      block = "gb",
    },
    mappings = {
      basic = true,
      extra = true,
    },
  }
  end
}

