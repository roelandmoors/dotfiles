call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dense-analysis/ale'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
call plug#end()

"space as leader key
let mapleader=' '

colorscheme catppuccin-mocha

"shared clipboards
set clipboard^=unnamed,unnamedplus

" don't wrap long lines
set nowrap

" always keep the gutter
set signcolumn=yes

" Save with ctrl s (also in insert mode and then leave insert mode)
map <C-s> :update<cr>
imap <C-s> <ESC>:update<cr>
map H ^
map L $
set scrolloff=5

"jump to tag (ctrl-o jumps back)
nnoremap t <C-]>
"autosave
set autowrite

set tabstop=4
set shiftwidth=4
set expandtab
set noshowmode

" change window also with tab
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W
noremap <silent> <C-S-Left> :vertical resize -1<CR>
noremap <silent> <C-S-Right> :vertical resize +1<CR>
" open new splits right (vertical) or below (horizontal)
set splitbelow
set splitright
map <F4> :vsplit<cr>
map " :vsplit<cr>
"NERDTree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

"clear search highlight on enter
nnoremap <CR> :noh<CR>
"highlight selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()

"cursorline only in normal mode
set cul
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

"timeout for leader key and command
set timeoutlen=300

" telescope
nnoremap <leader><space> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
lua require('telescope').load_extension('fzf')

" Lazygit
lua << EOF
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
EOF

" Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "vue" },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" emmet (,, for completion)
let g:user_emmet_leader_key=','

" abbreviations
iabbrev erb <%%><Left><Left>

" ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'html': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_disable_lsp = 1

" airline
let g:airline_theme = 'catppuccin'
let g:airline_powerline_fonts = 1
