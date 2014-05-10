set fencs=ucs-bom,utf-8,gbk,gb18030,default,latin1
"pathogen

"let fortran_have_tabs=1
set tabstop=3
set softtabstop=3
set shiftwidth=3
"let fortran_free_source=1
set nocompatible
set cindent
set backspace=indent,eol,start
"exec "py3file" fnameescape(globpath(&rtp, "/py3_init.py"))
filetype indent on
filetype plugin indent on
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <=line("$")|exe("norm'\"")|else|exe "norm $"|endif|endif
set mouse=a
set nu
set ttimeout
set ttimeoutlen=50
set t_Co=256
set columns=80
set colorcolumn=83
 "在分屏中间方便移动的映射                                                        
 nmap <C-j> <C-w>j                                                                
 nmap <C-k> <C-w>k                                                                
 nmap <C-h> <C-w>h                                                                
 nmap <C-l> <C-w>l 
"set tw=80
"set background=dark
"colorscheme ron
set guifont=Nimbus\ Mono\ L\ Bold\ 12
syntax on

"fortran
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
    let fortran_free_source=1
    unlet! fortran_fixed_source
else
	let fortran_fixed_source=1
 unlet! fortran_free_source
endif
let fortran_more_precise=1
let fortran_do_enddo=1
"去掉固定格式每行开头的红色填充
	let fortran_have_tabs=1
	"允许折叠
	"let fortran_fold=1
"let fortran_fold_conditionals=1
"1折叠方式
"set foldmethod=syntax

"bracket autocomplete

"neocomplcache
	let g:neocomplcache_enable_at_startup = 1
"vimwiki
let g:vimwiki_list = [{'maxhi': 0, 'css_name': 'style.css', 'auto_export': 0,
				\'diary_index': 'diary', 'template_default': '', 'nested_syntaxes': {},
				\'diary_sort': 'desc', 'path': '~/.VimWiki/', 'diary_link_fmt': '%Y-%m-%d',
			\'template_ext': '', 'syntax': 'default', 'custom_wiki2html': '',
			\'index': 'index', 'diary_header': 'Diary', 'ext': '.wiki',
			\'path_html': '', 'temp': 0, 'template_path': '', 'list_margin': -1,
			\'diary_rel_path': 'diary/'}]

"slime lisp
"let g:slimv_swank_cmd = '! xterm -e sbcl --load /home/liuxs/.vim/bundle/slimv/slime/start-swank.lisp &'
"
" For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos
 Bundle 'bash-support.vim'
 Bundle 'perl-support.vim'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'Valloric/ListToggle'
 Bundle 'scrooloose/syntastic'
 filetype plugin indent on "
