return {
  "sainnhe/gruvbox-material",
  opts = {
    transparent_background = "true",
    terminal_colors = true,
  },
  config = function(_, opts)
    vim.cmd([[colorscheme gruvbox-material]])
  end,
}
