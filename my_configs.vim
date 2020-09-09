"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

let text_files=['notes', 'txt', 'markdown', 'md']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins (x)Avoid using standard Vim directory names like 'plugin')
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

if has('nvim')
    Plug 'iCyMind/NeoSolarized'
endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/vim-easy-align'

Plug 'tomtom/enabler_vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'Yggdroot/indentLine'

Plug 'tpope/vim-sleuth'

Plug 'easymotion/vim-easymotion'

" Plug 'dkarter/bullets.vim'
"
Plug 'sheerun/vim-polyglot'

Plug 'dzeban/vim-log-syntax', { 'for': ['log'] }

Plug 'tpope/vim-dispatch'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-tbone'

Plug 'terryma/vim-expand-region'

Plug 'Valloric/vim-operator-highlight'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug '907th/vim-auto-save'

Plug 'tpope/vim-abolish'

Plug 'tpope/vim-markdown', { 'for': ['markdown'] }

Plug 'tpope/vim-fugitive'

" Plug 'majutsushi/tagbar'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-obsession'

Plug 'itchyny/lightline.vim'

" Plug 'scrooloose/nerdtree' ", { 'on': ['NerdTreeToggle', 'NerdTreeFind'] }
Plug 'scrooloose/nerdtree'

Plug 'altercation/vim-colors-solarized'

" Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'amix/open_file_under_cursor.vim'

Plug 'godlygeek/tabular'

Plug 'ervandew/supertab'

Plug 'ludovicchabant/vim-gutentags'

Plug 'schickling/vim-bufonly'

Plug 'mattn/emmet-vim'

Plug 'honza/vim-snippets'

" Plug 'papanikge/vim-voogle' "searching word in google

Plug 'benshuailyu/online-thesaurus-vim', { 'for': text_files }

Plug 'reedes/vim-litecorrect', {'for': text_files }

Plug 'vim-scripts/vis'

Plug 'christoomey/vim-tmux-navigator'

Plug 'soulston/vim-listtrans'

Plug 'michaeljsmith/vim-indent-object'

Plug 'OrangeT/vim-csharp', { 'for': ['cs'] }

Plug 'hrai/vim-csharp-snippets', { 'for': ['cs'], 'do': 'cp -f ./UltiSnips/* ~/.config/coc/ultisnips/' }

Plug 'justinmk/vim-gtfo'

Plug 'tpope/vim-eunuch'

Plug 'editorconfig/editorconfig-vim'

Plug 'chrisbra/Colorizer'

" Plug 'tpope/vim-endwise'

Plug 'tpope/vim-unimpaired'

Plug 'ConradIrwin/vim-bracketed-paste'

Plug 'chrisbra/vim-diff-enhanced'

Plug 'tmux-plugins/vim-tmux', { 'for': ['conf'] }

Plug 'ryanoasis/vim-devicons'

Plug 'justinmk/vim-sneak'

Plug 'luochen1990/rainbow'

Plug 'tmhedberg/matchit'

Plug 'wellle/context.vim'

Plug 'mbbill/undotree'

Plug 'bagrat/vim-buffet'

Plug 'axelf4/vim-strip-trailing-whitespace'

Plug 'Vimjas/vim-python-pep8-indent', { 'for': ['py'] }

" Javascript plugins
Plug 'w0rp/ale', { 'for': ['javascript', 'typescript.tsx', 'jsx'] }

" Plug 'prettier/vim-prettier', {
" \ 'do': 'yarn install',
" \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Vim debug
Plug 'vim-scripts/genutils', { 'for': ['vim'] }
Plug 'albfan/vim-breakpts', { 'for': ['vim'] }

" Local plugins
Plug '~/.vim_runtime/sources_non_forked/damian_conway'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-litecorrect settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup litecorrect
    autocmd!
    autocmd FileType markdown,md call litecorrect#init()
    autocmd FileType notes,txt call litecorrect#init()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colourscheme settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable this for console application
let g:solarized_termcolors=256

if has('nvim')
    set termguicolors
    colorscheme NeoSolarized

    " changing codelens colour
    hi CocCodeLens guifg=darkgreen

    Plug 'danilamihailov/beacon.nvim'
else
    colorscheme solarized
endif

