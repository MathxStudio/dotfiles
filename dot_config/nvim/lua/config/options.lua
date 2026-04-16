-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.breakindent = true
vim.opt.shell = "/bin/zsh"
vim.env.http_proxy = "http://127.0.0.1:7890"
vim.env.https_proxy = "http://127.0.0.1:7890"
vim.env.all_proxy = "socks5://127.0.0.1:7890"
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/neovim-provider/bin/python")
