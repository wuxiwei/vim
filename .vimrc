"引入插件pathogen使用
execute pathogen#infect()
call pathogen#helptags()
"禁用vi兼容模式
set nocompatible
"vim的内部编码
set encoding=utf-8
"vim在与屏幕和键盘交互师傅使用的编码（取决于实际的终端的设定）
set termencoding=utf-8
"vim打开文件时的尝试使用的编码
set fileencodings=utf-8,gbk,gb2312,default,latin1
"开启语法高亮功能
syntax enable
"允许用指定高亮替换方案
syntax on
"显示行号
set nu
"括号匹配
set showmatch
"自动检测文件类型
filetype plugin indent on 
"在缩进和遇到Tab键时使用空格替代
set expandtab
"根据文件类型设置缩进格式
au FileType html,vim,javascript setl shiftwidth=2
au FileType html,vim,javascript setl tabstop=2
au FileType java,php,pathon setl shiftwidth=4
au FileType java,php,pathon setl tabstop=4
"启动vim时不要自动折叠代码
set foldlevel=100
"自动对齐
set ai
"根据下面的格式对齐
set si
set smarttab
set wrap
set lbr
set tw=0
set foldmethod=syntax
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"高亮显示当前行
set cursorline
"高亮显示搜索结果
set hlsearch
"禁止拆行
set nowrap
"设置快捷键前最，即<Leader>
let mapleader=":"
"设置快捷键将选中文本块复制到系统剪贴板
map <Leader>y "+y
"设置快捷键将系统剪贴板内容粘帖到vim
map <Leader>p "+p
noremap <F9> :!ctags -R<CR>
"设置tags文件为当前目录下的tags，默认情况也是
"set tags+=./tags
"配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc
"vim对一些流行的编程语言的语法提供自动完成的功能，但是默认是没有启用。
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"vim对一些语言实现的格式化命令
"在命令模式下直接输入“gg=G”。
"使用 c-x c-o 补全的时候，在窗口上方会出现一个新的窗口，补全完之后依然存在。设置关闭
set completeopt=longest,menuone
"
"以下为插件设置参数
"
"-----------------------------------------------------------------
"auto-pairs插件，用于自动补全括号，引号等
"
"-----------------------------------------------------------------
"vim-surroun.vim插件，处理分隔符，包括添加、修改、删除。
"添加""，选择内容，输入S"。
"修改""为''，在分隔符内部，输入cs"'。
"删除""，在分隔符内部，输入ds"。
"删除<>xml标签时，t可以代替<>xml标签。
"
"-----------------------------------------------------------------
"nerdtree插件，目录树。
"设置默认开启
autocmd vimenter * NERDTree
"打开关闭快捷键
map <F3> :NERDTreeToggle<CR>
"当只剩下目录树时，自动关闭vim。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"
"-----------------------------------------------------------------
"xptemplate插件，代码片段补全
"提示方式：Ctrl+\。
"
"vim-Markdown插件，实现markdown高亮。
"
"tagbar插件显示方法属性列表
map <silent> <F4> :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_autofocus=1
"
"-----------------------------------------------------------------
"NERD_commenter.vim   注释代码用的，
"[count]<Leader>cc 光标以下count行逐行添加注释(7,cc)
"[count]<Leader>cu 光标以下count行逐行取消注释(7,cu)
"[count]<Leader>cm 光标以下count行尝试添加块注释(7,cm)
"<Leader>cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
"注：count参数可选，无则默认为选中行或当前行
"-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看"
