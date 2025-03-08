require("core")
require("floaterminal")

if vim.g.neovide then
    vim.g.neovide_transparency = 0.6
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"


require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = {
        enabled = true,
    },
})

dofile(vim.g.base46_cache .. "defaults")
for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
    dofile(vim.g.base46_cache .. v)
end

vim.defer_fn(function()
    vim.cmd("highlight LineNr guifg=#9ccfd8")
    vim.cmd("highlight Comment guifg=#c4a7e7")
end, 100)
