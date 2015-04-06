set cursorline
set number
set mouse=a
set ruler

"============================================================================
" Use arrow keys to navigate after a :vimgrep or :helpgrep
"============================================================================

    nmap <silent> <RIGHT>         :cnext<CR>
    nmap <silent> <RIGHT><RIGHT>  :cnfile<CR><C-G>
    nmap <silent> <LEFT>          :cprev<CR>
    nmap <silent> <LEFT><LEFT>    :cpfile<CR><C-G>


"============================================================================
" Make :help appear in a full-screen tab, instead of a window
"============================================================================
    "Only apply to .txt files...
    augroup HelpInTabs
        autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
    augroup END

    "Only apply to help files...
    function! HelpInNewTab ()
        if &buftype == 'help'
            "Convert the help window to a tab...
            execute "normal \<C-W>T"
        endif
    endfunction


	"nnoremap / /\v

"============================================================================
"	SEARCH CONFIGURATION 
"============================================================================

set ignorecase
set incsearch
set smartcase
set hlsearch

"============================================================================
" Make delete key in Normal mode remove the persistently highlighted matches
"============================================================================

    nmap <silent>  <BS>  :nohlsearch<CR>

"============================================================================
" Make persistent UNDO :help undo-persistence 
"============================================================================
if has('persistent_undo')
	set undofile
endif
set undodir=$HOME/.VIM_UNDO_FILES
set undolevels=5000

"============================================================================
" Preview TAB completions :help wildmode
"============================================================================
"set the character that initiantes completion :set wildchar=<ESC>

set wildmode=list:longest,full

























