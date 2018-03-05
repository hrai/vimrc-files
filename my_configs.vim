
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colourscheme settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable this for console application
let g:solarized_termcolors=256
colorscheme solarized


""""""""""""""""""""""""""""""""""""""""""""""""""

"Match pattern while typing search pattern
set incsearch

"Yanking to clipboard
noremap <C-Y> "+y
"Putting from clipboard
noremap <C-P> "+p

"Closing/saving files
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>

"Map space to colon for easy access to run commands
nnoremap <space> :

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default directory settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backupdir=~/.vim_runtime/temp_dirs/undodir
set directory=~/.vim_runtime/temp_dirs/undodir
set undodir=~/.vim_runtime/temp_dirs/undodir


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Yggdroot/indentLine'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-sleuth'

Plugin 'easymotion/vim-easymotion'

Plugin 'dkarter/bullets.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'bkad/CamelCaseMotion'

Plugin 'tpope/vim-dispatch'

Plugin 'Valloric/vim-operator-highlight'

Plugin 'groenewege/vim-less'

Plugin 'artur-shaik/vim-javacomplete2'

"Plugin 'OrangeT/vim-csharp'

"Plugin 'OmniSharp/omnisharp-vim'

"Plugin 'OmniSharp/omnisharp-server'

call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EclimCompletionMethod = 'omnifunc'
set omnifunc=syntaxcomplete#Complete


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CamelCaseMotion.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call camelcasemotion#CreateMotionMappings('n')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fold settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fdm=indent
set foldlevelstart=20


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omnisharp settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:OmniSharp_server_type = 'roslyn'
"let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
"let g:OmniSharp_prefer_global_sln = 1  
"let g:OmniSharp_timeout = 10 

