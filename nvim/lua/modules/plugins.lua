local Plug = vim.fn['plug#']


vim.call('plug#begin')
	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('fatih/vim-go')
  Plug('scrooloose/nerdtree')
  Plug('xuyuanp/nerdtree-git-plugin')
  Plug('ryanoasis/vim-devicons')
  Plug('lukas-reineke/indent-blankline.nvim')
  Plug('nvim-treesitter/nvim-treesitter')
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim')
vim.call('plug#end')
