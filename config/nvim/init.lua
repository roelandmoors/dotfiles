-- plugins
vim.pack.add({
    { src = "https://github.com/eemed/sitruuna.vim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    {
        src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
        version = vim.version.range('3')
    },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    -- dependencies
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

-- settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- looks and colors
vim.cmd("colorscheme sitruuna")
--vim.cmd(":hi StatusLine guibg=NONE")
vim.o.winborder = 'rounded'

-- save with ctrl-s and go to normal mode if needed
vim.keymap.set('n', '<C-s>', ':update<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:update<CR>', { noremap = true, silent = true })

-- change window also with tab
vim.keymap.set('n', '<tab>', '<c-w>w', { noremap = true })
vim.keymap.set('n', '<S-tab>', '<c-w>W', { noremap = true })

-- remove hightlights
vim.keymap.set('n', '<CR>', ':noh<CR>', { noremap = true })

-- vertical split
vim.keymap.set('n', '"', ':vsplit<CR>', { noremap = true })

-- use system clipboard
vim.opt.clipboard = "unnamedplus"

-- always show signcolumn
vim.opt.signcolumn = "yes"

-- omnicomplete with ctrl space
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { noremap = true })

-- lsp shortcuts (K, grn, grr, gri, g0, gra, .... are defaults)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.hl.on_yank({higroup="Visual", timeout=200})
augroup END
]]

-- show diagnostics on request
vim.diagnostic.config({ virtual_text = false }) -- this is the default now
vim.keymap.set('n', '<leader>ds', vim.diagnostic.open_float, { desc = 'Show diagnostics in float' })

require("mason").setup()
require("neo-tree").setup()
require("fzf-lua").setup()

-- open neo-tree as float with backslash key
vim.keymap.set('n', '\\', ':Neotree reveal=true position=float toggle=true<CR>')

-- fzf shortcuts
vim.keymap.set('n', '<leader><space>', ':FzfLua files<CR>')
vim.keymap.set('n', '<leader>f', ':FzfLua<CR>')

-- enable needed lsp
vim.lsp.enable({ "lua_ls", "zls" })


