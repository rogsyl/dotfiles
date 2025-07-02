-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local km = vim.keymap -- for conciseness

-- use jk to exit insert mode
-- TODO: pleasure or pain?
km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- km.set("n", "x", '"_x')

-- increment/decrement numbers
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- ctrl+hjkl to move between splits
km.set("i", "<C-h>", "<C-w>h", { desc = "Move to split on left" })
km.set("i", "<C-j>", "<C-w>j", { desc = "Move to split below" })
km.set("i", "<C-k>", "<C-w>k", { desc = "Move to split above" })
km.set("i", "<C-l>", "<C-w>l", { desc = "Move to split on right" })

-- Move lines up/down
km.set("n", "<C-S-DOWN>", ":m .+1<CR>==", { desc = "Move line up" })
km.set("n", "<C-S-UP>", ":m .-2<CR>==", { desc = "Move line up" })
km.set("i", "<C-S-DOWN>", "<ESC>:m .+1<CR>==gi", { desc = "Move line up" })
km.set("i", "<C-S-UP>", "<ESC>:m .-2<CR>==gi", { desc = "Move line up" })
km.set("v", "<C-S-DOWN>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) up" })
km.set("v", "<C-S-UP>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })
