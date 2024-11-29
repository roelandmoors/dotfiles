return {
  { "folke/noice.nvim", enabled = true },

  -- no 'tabs'
  { "akinsho/bufferline.nvim", enabled = false },

  --  no indent guides
  { "lukas-reineke/indent-blankline.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },

  -- multiple cursors
  { "mg979/vim-visual-multi" },

  -- manuel autocomplete (C-space)
  -- {
  --   "nvim-cmp",
  --   opts = function(_, opts)
  --     opts.completion = {
  --       autocomplete = false,
  --     }
  --   end,
  -- },

  -- Sort files by modified date
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = {
  --
  --     pickers = {
  --       find_files = {
  --         find_command = { "rg", "--files", "--color", "never", "-g", "!.git", "--sortr=modified" },
  --         hidden = true,
  --       },
  --     },
  --   },
  -- },
}
