" ###################   Plugins   ######################## 
call plug#begin() 
" Plugin para tema gruvbox 
Plug 'morhetz/gruvbox' 
" Com o mouse na palavra a ser substituida aperte ctrl n ate selecionar todas 
" a ocorrências e após c digite a palavra que substituirá e dê dois esc 
" Instala múltiplos cursores 
Plug 'terryma/vim-multiple-cursors' 

" Auxilio em sintaxe para diversas linguagens de programação 
Plug 'sheerun/vim-polyglot' 

" Programa de terminal que faz buscas fuzzy 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim' 

" Autocomplete compatível com o tmux, muito util para se em um projeto houver 
" a necessidade de copiar exatamente o nome de um arquivo de uma outra pasta. 
" Nesse caso o plugin ajudará a errar menos 
" NÃO FUNCIONOU 
Plug 'ncm2/ncm2' 
Plug 'roxma/nvim-yarp' 

" Plugin para linter em nossos arquivos 
Plug 'dense-analysis/ale' 

" Completa os pares de aspas, parenteses entre outros... 
Plug 'jiangmiao/auto-pairs' 

" Para plena instalação, temos que criar um diretório em 
" ~/.config/nvim/UltiSnips 
" Plugin para snippet 
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets' 

call plug#end() 

" ##########   Configurando UltiSnips   ################## 
" setando uma variável global com g: 
let g:UltiSnipsEditSplit = 'vertical' 
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips' 

" ##########   Configurações Básicas   ################### 
" Permite carregar arquivos e deixar o arquivo que foi modificado armazenado 
" na memória 
set hidden 

" Ativa o tema GRUVBOX 
colorscheme gruvbox 

" Coloca um background escuro 
set background=dark 

" Habilita enumeração das linhas 
set number 

" Mostra o número em relação a posição do cursor 
set relativenumber 

" Habilita o mouse 
set mouse=a 

" Mostra interação com comandos em tempo real 
set inccommand=split 

" ####################   Atalhos   ######################## 
" Mapeando a tecla de espaço para ser a leader key 
let mapleader="\<space>" 

" n - modo normal | nore - no recursive --> Cada comando que eu faça ele não 
" expanda em outras macros que já foram definidas | map - mapeamento 
" Colocar um ponto e vírgula no final das linhas 
nnoremap <leader>; A;<esc> 

" Abre uma split vertical do arquivo de configuração do nvim, no caso, 
" init.vim 
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr> 

" Toda vez que houver modificações no arquivo init.vim ao digitar espaço + sv 
" inicia o comando source 
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr> 

" Executando PlugInstall 
nnoremap <leader>pi :PlugInstall<cr> 

" Mapeando control p para abrir pesquisas com o Fuzzy 
nnoremap <c-p> :Files<cr> 

" Mapeando a procura junto com silverseacher para pesquisas de diversas 
" ocorrências dentro do seu projeto 
nnoremap <c-f> :Ag<space> 
" #########################################################################
