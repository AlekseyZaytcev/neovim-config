return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'haishanh/night-owl.vim'
  use 'itchyny/lightline.vim'
  use 'mhartington/formatter.nvim'
  use 'tpope/vim-fugitive'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'francoiscabrol/ranger.vim',
    requires = {
      'rbgrouleff/bclose.vim'
    }
  }
end)
