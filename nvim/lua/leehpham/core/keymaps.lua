vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- keymap.set("i", "jk", "<ESC>")

-- Clear search highlight
-- keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Delete and NOT copy the deleted character to the register
-- keymap.set("n", "x", '"_x') 

-- Increment/decrement numbers.
-- keymap.set("n", "<leader>+", "<C-a>")
-- keymap.set("n", "<leader>-", "<C-x>")

-- Split window vertically
-- keymap.set("n", "<leader>sv", "<C-w>v")
-- Split window horizontally
-- keymap.set("n", "<leader>sh", "<C-w>s")
-- Make split windows equal width
-- keymap.set("n", "<leader>se", "<C-w>=")
-- Close current split window
-- keymap.set("n", "<leader>sx", ":close<CR>")

-- Open new tab
-- keymap.set("n", "<leader>to", ":tabnew<CR>")
-- Close current tab 
-- keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- Go to next tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>")
-- Go to previous tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>")

-- plugin keymaps

-- vim-maximizer
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- TODO: need to find a proper keymap for grep_string
keymap.set("n", "<leader>fc", builtin.grep_string, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

