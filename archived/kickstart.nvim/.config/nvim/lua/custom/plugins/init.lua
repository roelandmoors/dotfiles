-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Switch windows with tab
vim.keymap.set('n', '<tab>', '<c-w>w', { desc = 'Next Window' })
vim.keymap.set('n', '<S-tab>', '<c-w>W', { desc = 'Prev Window' })

-- avoid accidental movement
vim.keymap.set({ 'n', 'v' }, '<S-Up>', 'k')
vim.keymap.set({ 'n', 'v' }, '<S-Down>', 'j')

-- save with ctrl-s and exit insert mode
vim.keymap.set('n', '<C-s>', ':update<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:update<CR>')

return {
  'mg979/vim-visual-multi',

  {
    'danymat/neogen',
    config = true,
    keys = {
      {
        '<leader>cn',
        function()
          require('neogen').generate()
        end,
        desc = 'Generate Annotations (Neogen)',
      },
    },
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },

  -- auto close html tag (with treesitter)
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },

  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },

  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
}
