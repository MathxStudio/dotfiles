return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.opt.conceallevel = 1
      vim.g.tex_flavor = "latex"

      -- 0: 不自动打开, 1: 编译错误时自动在底部打开, 2: 总是打开
      vim.g.vimtex_quickfix_mode = 1
      -- 忽略一些无关紧要的 Warning（比如 Underfull \hbox），只关注致命 Error
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        -- "Overfull",
        "specifier changed to",
        "Token not allowed in a PDF string",
      }
      -- 确保报错面板在最底部横向展开 (类似 VS Code 终端)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "qf",
        command = "wincmd J | resize 8", -- J 代表移到最底部，resize 8 代表高度为 8 行
      })
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
}
