vim.opt.background = "dark" -- set this to dark or light

vim.g.mapleader = " "

vim.g.maplocalleader = " "

vim.o.mouse = "a"

vim.o.clipboard = "unnamedplus"

vim.o.breakindent = true

vim.o.completeopt = "menuone,noselect"

vim.wo.signcolumn = "yes"

vim.opt.showmode = false

vim.opt.nu = true

vim.opt.tabstop = 4

vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.guicursor = "n-v-c:cyan"

vim.opt.backup = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.undofile = true

vim.opt.hlsearch = false

vim.opt.incsearch = true

vim.opt.termguicolors = true


local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})

--vim.api.nvim_create_autocmd("BufWritePre", {
--	pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
--	callback = function()
--		vim.cmd("silent! %!clang-format")
--	end,
--})
--

local keymap = vim.keymap

keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<A-d>", ":bw<CR>", { desc = "close buffer" })
keymap.set("n", "x", '"_x')

-- keymap.set("n", "<leader>/", function()
-- 	require("Comment.api").toggle.linewise.current()
-- end)
-- keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
keymap.set("n", "<C-p>", ":bprevious<CR>")
keymap.set("n", "<C-o>", ":bnext<CR>")

keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
