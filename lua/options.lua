require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.opt.statusline = "%#normal# "
  end,
})
-- vim.cmd "autocmd BufNewFile,BufRead *.ejs set filetype=html"

local opt = vim.opt
opt.cmdheight = 0
local lpath = vim.fn.stdpath "config" .. "/snippets"
vim.g.vscode_snippets_path = lpath
vim.g.snipmate_snippets_path = lpath
opt.relativenumber = true
opt.wrap = true
opt.shiftwidth = 2
opt.breakindent = true
opt.autoindent = true
opt.linebreak = true
vim.ui.select = require("dropbar.utils.menu").select
-- opt.cursorline = true
-- opt.cursorlineopt = "number"
