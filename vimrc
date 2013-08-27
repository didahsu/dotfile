set nocompatible               
filetype off                  
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'http://github.com/gmarik/vundle'
Bundle 'http://github.com/bling/vim-airline'
Bundle 'http://github.com/tpope/vim-surround'
Bundle 'http://github.com/ap/vim-css-color'
Bundle 'http://github.com/plasticboy/vim-markdown'
Bundle 'http://github.com/kchmck/vim-coffee-script'
Bundle 'http://github.com/vim-ruby/vim-ruby'
Bundle 'http://github.com/tpope/vim-rails'
Bundle 'http://github.com/scrooloose/nerdtree'
Bundle 'http://github.com/jistr/vim-nerdtree-tabs'
Bundle 'http://github.com/scrooloose/nerdcommenter'
Bundle 'http://github.com/tpope/vim-repeat'
Bundle 'http://github.com/Lokaltog/vim-easymotion'
Bundle 'http://github.com/kien/ctrlp.vim'
Bundle 'http://github.com/pangloss/vim-javascript'
Bundle 'http://github.com/Raimondi/delimitMate'
Bundle 'http://github.com/tpope/vim-fugitive'
Bundle 'http://github.com/mattn/zencoding-vim'
Bundle 'http://github.com/godlygeek/tabular'
Bundle 'http://github.com/quentindecock/vim-cucumber-align-pipes'
Bundle 'http://github.com/nathanaelkane/vim-indent-guides'
Bundle 'http://github.com/terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set t_Co=256 "讓vim支援256色
set nocompatible "關閉兼容模式
set number "顯示行號
syntax on "語法高亮
filetype plugin indent on "自動識別檔案類型
colorscheme railscasts "顏色配置模式
set showmatch "顯示對應得括號
set expandtab "用空白鍵取代Tab
set hls "反白符合搜尋得字串
set shiftwidth=2
set softtabstop=2
set tabstop =2 "設定tab鍵寬度
set autoindent "自動縮排
set background=dark "使用深色主題的高亮度
set cursorline "底線
set wildmenu " command line mode 的參考選項
set wildmode=list:full
set foldmethod=syntax
set foldlevel =10
set laststatus=2 "狀態列設定 0：永不顯示 1：兩個視窗以上顯示 2：永遠顯示
map <F2> <plug>NERDTreeTabsToggle<CR>
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Tabular plugin setting. 
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
	let p = '^\s*|\s.*\s|\s*$'
	if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
		let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
		Tabularize/|/l1
		normal! 
		call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

"vim-indent-guide highlight setting

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"indent
map <F3> <leader>ig

"mutil_cursor_use_default_mapping
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'
let g:multi_cursor_start_key = '<F4>'
