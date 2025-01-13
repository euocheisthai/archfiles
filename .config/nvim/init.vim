set number
set background=dark
colorscheme gruvbox

lua require('plugins')
lua require('init')
lua require('nvim-tree').setup {}

lua require('lualine').setup()


