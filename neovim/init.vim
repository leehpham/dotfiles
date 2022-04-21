" Show line numbers.
set number
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4
" In INSERT mode: use the appropriate number of spaces to insert a <TAB>. 
set expandtab 
" Enables 24-bit RGB color in the TUI.
set termguicolors
" Highlight the text line of the cursor.
set cursorline

call plug#begin(stdpath('config') . '/plugged')
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': ['markdown']}
call plug#end()

colorscheme dracula
