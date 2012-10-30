""" désactive la compatibilité (utile pour plugins récents)
set nocompatible

""définit une indentation automatique de 4 caractères
set autoindent
set shiftwidth=2
set softtabstop=2

""force vim à insérer des tabulations et non une série d'espaces
set noexpandtab

""" autocomplete
set nocp
filetype plugin on

noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set tags+=~/.vim/tags/stl
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

"" indentation
set autoindent

""" ignorer la case dans les recherches
set ignorecase

""" affiche les commandes tapées
set showcmd

""" permet d'utiliser la souris (scroll, selection)
set mouse=a

""descend de 5 lignes avant que le curseur sorte du viewport
set scrolloff=5

""" active les plugins relatifs au language
"filetype indent plugin on

""" affiche les numéros de ligne
set number

""" affiche les correspondances ( { [
set showmatch

""" active la coloration syntaxique
syntax on

""" affiche ligne et colonne en bas a droite
set ruler

""" met en valeur la ligne du curseur
set cursorline

"""  no sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""" correcteur orthographique dans les chaines et les commentaires
"""  il faut retaper "set spelllang=en,fr" en mode commande si erreur
""" set  spelllang =en,fr
""" set  spell
""" set  spellsuggest =5

""" Show when a line exceeds 80 chars
"au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)

""" Highlight Tabs and Spaces
highlight Tab ctermbg=darkgray guibg=darkgray
highlight Space ctermbg=darkblue guibg=darkblue
"au BufWinEnter * let w:m2=matchadd('Tab', '\t', -1)
"au BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
set list listchars=tab:»·,trail:·

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#CompleteTags

autocmd BufWritePre * :%s/\s\+$//e

colorscheme ir_black

" keymap
map <F2> :vsplit <CR>
map <F3> :sp <CR>
