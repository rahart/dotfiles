local keymap = vim.keymap.set

-- Insert mode
keymap("i", "<leader>ne", "<Esc>", opts)
keymap("n", "<C-i>", ":PackerInstall<cr>", opts)

-- Normal mode
keymap("n", "<A-s>", ":w!<cr>", opts)

-- telecscope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)

keymap("n", "<leader>hm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>ha", ":lua require(\"harpoon.mark\").add_file()<cr>", opts)
