set termguicolors

colorscheme nord
syntax on

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

" ------------------------------------------------------------------------------------------------
" OPTIONS
" ------------------------------------------------------------------------------------------------

set nu
set autoindent              " Carry over indenting from previous line
set expandtab               " No tabs
set hlsearch                " Hilight searching
set ignorecase              " Case insensitive
set incsearch               " Search as you type
set laststatus=2            " Always show the status bar
set linebreak               " Break long lines by word, not char
set ruler                   " Show row/col and percentage
set softtabstop=2           " Spaces 'feel' like tabs
set tabstop=2               " The One True Tab

" Essential for filetype plugins.
filetype plugin indent on

" Custom color for line numbers
highlight LineNr ctermfg=red

" Make trailing spaces very visible
highlight SpecialKey ctermbg=Yellow guibg=Yellow

" Make menu selections visible
highlight PmenuSel ctermfg=black ctermbg=magenta

" Markdown could be more fruit salady
highlight link markdownH1 PreProc
highlight link markdownH2 PreProc
highlight link markdownLink Character
highlight link markdownBold String
highlight link markdownItalic Statement
highlight link markdownCode Delimiter
highlight link markdownCodeBlock Delimiter
highlight link markdownListMarker Todo


highlight Comment ctermfg=DarkGrey guifg=DarkGrey
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set cursorline
