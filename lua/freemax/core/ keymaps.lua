vim.g.mapleader = " "

local keymap = vim.keymap -- for concieseness


--------------------------------
-- General keymaps --------------

-- use jk to exit insert mode 
keymap.set("i","jk","<ESC>")

-- clear search highlights 
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single charcter without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- plugin keymaps

-- vim
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")

-- tabbar
-- Move to previous/next
keymap.set("n", "<leader>,", "<Cmd>BufferPrevious<CR>")
keymap.set("n", "<leader>.", "<Cmd>BufferNext<CR>")
-- Re-order to previous/next
keymap.set("n", "<leader><", "<Cmd>BufferMovePrevious<CR>")
keymap.set("n", "<leader>>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>")
keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>")
keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>")
keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>")
keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>")
keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>")
keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>")
keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>")
keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>")
keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>")
-- Pin/unpin buffer
keymap.set("n", "<leader>p", "<Cmd>BufferPin<CR>")
-- Close buffer
keymap.set("n", "<leader>c", "<Cmd>BufferClose<CR>")
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>")
-- Sort automatically by...
keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-