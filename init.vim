set number
set autoindent
set smartindent
set hlsearch
set incsearch
set nobackup
set nowritebackup
set hidden
set encoding=UTF-8

autocmd BufNewFile,BufReadPost *.coffee            setfiletype coffee
autocmd BufNewFile,BufReadPost *.txt               setfiletype text
autocmd BufNewFile,BufReadPost *.yml.enc.*         setfiletype yml_enc
autocmd BufNewFile,BufReadPost *.css.scss          setfiletype scss
autocmd BufNewFile,BufRead     *.md 	   	   setlocal filetype=markdown
autocmd BufNewFile,BufRead     *.yml.enc.*         set syntax=yaml
autocmd BufNewFile,BufRead     *.tpl               set filetype=html
autocmd BufNewFile,BufRead     *.erb.tt            set filetype=html
autocmd BufNewFile,BufRead     *.xlsx.axlsx        set filetype=html
autocmd BufNewFile,BufRead     *.pdf.erb           set filetype=html
autocmd BufNewFile,BufRead     *.rb.tt             set filetype=ruby
autocmd BufNewFile,BufRead     Dockerfile.*        set filetype=dockerfile
autocmd BufNewFile,BufRead     *.ts                setlocal filetype=typescript
autocmd BufNewFile,BufRead     *.d.ts              setlocal filetype=typescript
autocmd BufNewFile,BufRead     *.axlsx             setlocal filetype=ruby
autocmd BufNewFile,BufRead     CMakeLists.txt      setlocal filetype=cmake
autocmd BufNewFile,BufRead     *.fragmentshader    setlocal filetype=cpp
autocmd BufNewFile,BufRead     *.vertexshader      setlocal filetype=cpp
autocmd BufNewFile,BufRead     *.json.jbuilder 	   setlocal filetype=ruby
autocmd BufNewFile,BufRead     *.jsx 	   	   setlocal filetype=javascript

autocmd BufNewFile,BufRead     *.json.jbuilder 	   setlocal filetype=ruby
autocmd FileType html        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css         setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescript  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python      setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType go          setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType ruby        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType eruby       setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType coffee      setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType scss        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yml_enc     setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType text        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType php         setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType cpp 	     setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType markdown    setlocal shiftwidth=2 tabstop=2 expandtab

call plug#begin('~/.vim/plugged')
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'arcticicestudio/nord-vim'
Plug 'tveskag/nvim-blame-line'
Plug 'junegunn/vim-easy-align'
call plug#end()

colorscheme nord

let g:ale_linters = { 'ruby': ['rubocop'] }
let g:ale_ruby_rubocop_executable = 'rubocop'

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_history_log_output = 1
let g:ale_enabled = 1
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"

let mapleader = ","
nnoremap <silent> <leader>a :Ag<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g :ToggleBlameLine<CR>
nnoremap <A-left> :bp<CR>
nnoremap <A-right> :bn<CR>
xmap <leader>ga :EasyAlign<CR>
