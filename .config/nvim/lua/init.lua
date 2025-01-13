-- executed by neovim when started up
require("plugins") -- i guess its the same as adding this in init.vim

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.keymap.set('n', 'C-T', ':NvimTreeToggle<CR>')