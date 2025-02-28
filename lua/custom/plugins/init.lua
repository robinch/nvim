-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  "nvim-lua/plenary.nvim",
  -- can mark multiple file and jump between them
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  -- refactoring
  'ThePrimeagen/refactoring.nvim',
  -- colorscheme
  'folke/tokyonight.nvim',
  -- Can show a tree with all undo's
  'mbbill/undotree',
  -- shows the treesitter tree
  'nvim-treesitter/playground',
  -- Github copilot
  'github/copilot.vim',
  -- tmux & split window navigator
  'christoomey/vim-tmux-navigator',
  -- zenmode
  'folke/zen-mode.nvim',
  -- nvim-tree
  'nvim-tree/nvim-tree.lua',
  -- nvim-tree icons
  'nvim-tree/nvim-web-devicons',
  -- context
  'nvim-treesitter/nvim-treesitter-context',
  -- illuminate
  'RRethy/vim-illuminate',
  -- ufo (code folding)
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async'
  },
  -- Can have terminal programs in nvim
  'akinsho/toggleterm.nvim',
}
