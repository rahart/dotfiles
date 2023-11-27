local setup, chatgpt = pcall(require, "chatgpt")
if not setup then
  return
end

chatgpt.setup({
  openai_edit_params = {
    model = "gpt-4-vision-preview",
  },
})

