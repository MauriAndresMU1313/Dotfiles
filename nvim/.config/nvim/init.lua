-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Custom color scheme to match terminal
vim.cmd("colorscheme slate")  -- Base dark theme

-- Match terminal colors
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight LineNr guifg=#808080
  highlight CursorLineNr guifg=#ffff87 gui=bold
  highlight CursorLine guibg=#2a2a2a
  highlight Visual guibg=#ffffd7 guifg=#000000
  highlight String guifg=#ff87d7
  highlight Keyword guifg=#d7ff5f
  highlight Function guifg=#ffd787
  highlight Comment guifg=#808080 gui=italic
  highlight Type guifg=#ffd787
  highlight Constant guifg=#ffd787
]])

-- Status line color (bottom bar)
vim.cmd([[
  highlight StatusLine guibg=#ffff87 guifg=#000000 gui=bold
  highlight StatusLineNC guibg=#808080 guifg=#000000
]])
