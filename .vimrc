" This line should not be removed as it ensures that various options are
    " properly set to work with the Vim-related packages available in Debian.
    " debian.vim

    " Uncomment the next line to make Vim more Vi-compatible
    " NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
    " options, so any other options should be set AFTER setting 'compatible'.

    " Vim5 and later versions support syntax highlighting. Uncommenting the
    " following enables syntax highlighting by default.
    if has("syntax")
      syntax on            " 语法高亮
    endif
    colorscheme ron        " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

    " detect file type
    filetype on
    filetype plugin on

    " If using a dark background within the editing area and syntax highlighting
    " turn on this option as well
    set background=dark

    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      "have Vim load indentation rules and plugins according to the detected filetype
      filetype plugin indent on
    endif

    " The following are commented out as they cause vim to behave a lot
    " differently from regular Vi. They are highly recommended though.

    "set ignorecase        " 搜索模式里忽略大小写
    "set smartcase        " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
    set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
    set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
    set smartindent        " 智能对齐方式
    set tabstop=4        " 设置制表符(tab键)的宽度
    set softtabstop=4     " 设置软制表符的宽度    
    set shiftwidth=4    " (自动) 缩进使用的4个空格
    set cindent            " 使用 C/C++ 语言的自动缩进方式
    set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
    set backspace=2    " 设置退格键可用
    set showmatch        " 设置匹配模式，显示匹配的括号
    set linebreak        " 整词换行
    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
    "set hidden " Hide buffers when they are abandoned
    "set mouse=a            " Enable mouse usage (all modes)    "使用鼠标
    set number            " Enable line number    "显示行号
    "set previewwindow    " 标识预览窗口
    set history=50        " set command history to 50    "历史记录50条


    "--状态行设置--
    set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
    set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

    "--命令行设置--
    set showcmd            " 命令行显示输入的命令
    set showmode        " 命令行显示vim当前模式

    "--find setting--
    set incsearch        " 输入字符串就显示匹配点
    set hlsearch       
	"colorscheme delek 
	colorscheme molokai 

    "imap {}<left><CR> {<esc>o}<esc>:let leavechar="}"<cr>O
    imap }<left><cr>  <esc>o}<esc>:let leavechar="}"<cr>O
"	输入两个[自动匹配两个花括号并换行光标位于其中间并且完成退格

	set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim  "设置运行时路径
    call vundle#begin()   "vundle初始化

    Plugin 'VundleVim/Vundle.vim'			"让vundle管理插件

				
	Plugin 'tpope/vim-fugitive'
	Plugin 'rstacruz/sparkup',{'rtp':'vim/'}
	Plugin 'ascenator/L9',{'name':'newL9'}
	Plugin 'universal-ctags/ctags'
	Plugin 'perl11/potion'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-scripts/taglist.vim'
	Plugin 'vim-scripts/winmanager'

	call vundle#end()
	filetype plugin indent on



	"--------------------------------------------------------------------------------------------------------------------------------------
	"如何使用vundle来安装插件
	"以下范例用来支持不同格式的安装。
	"请将安装插件的命令放在vundle#begin()和vundle#end()中间。
	
    "Plugin 'tpope/vim-fugitive'					"Github上的插件，格式为：Plugin　'用户名/插件仓库名'  
	"Plugin 'L9'									"来自http://vim-scripts.org/vim/scripts.html的插件
													"Plugin '插件名称',实际上是Plugin 'vim-scripts/插件仓库名'只是此处的用户名可以省略
	"Plugin 'ascenator/L9',{'name':'newL9'}　 　	"安装L9，如果已经安装这个插件，可利用此格式避免命名冲突
	"Plugin 'rstacruz/sparkup',{'rtp':'vim/'} 　	"插件在仓库的子目录中，正确指定路径用已设置runtimepath,此范例插件在sparkup/vim目录中
	"Plugin 'git://git.wincent.com/command-t.git'	"由Git支持但不在github上的插件仓库　Plugin 'git clone 后面的地址'
	"Plugin 'file:///home/gmarik/path/to/plugin'    "本地机器上的Git软件库（例如编写自己的插件），Plugin 'file:///+本地仓库绝对路径'
	"--------------------------------------------------------------------------------------------------------------------------------------
	
	inoremap jj <esc> 
	nnoremap <Up> <nop>
	nnoremap <Down> <nop>
	nnoremap <Right> <nop>
	nnoremap <Left> <nop>
	map <c-w> <c-w>w

	"imap <F5> <esc>:call CompileRunC()<CR>
	"nmap <F5> :call CompileRunC()<CR>
	"vmap <F5> <esc>:call CompileRunC()<CR>
	"function! CompileRunC()
	"	execute "w"
	"	execute "!clang % -o %<"
	"endfu
	
	
	nmap <F5> :silent make<CR>:redraw!<CR>:cw<cr>
	imap <F5> <esc>:silent make<CR>:redraw!<CR>:cw<cr>
	vmap <F5> <esc>:silent make<CR>:redraw!<CR>:cw<cr>

	nmap <F6> :silent !printf "\033c"<CR>:redraw!<CR>:!./%<<cr>
	imap <F6> <esc>:silent !printf "\033c"<CR>:redraw!<CR>:!./%<<cr>
	vmap <F6> <esc>:silent !printf "\033c"<CR>:redraw!<CR>:!./%<<cr>
	set makeprg=clang\ %\ -o\ %<
	
	
	
	
	
	let g:ycm_server_python_interpreter='/usr/bin/python'
	let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
