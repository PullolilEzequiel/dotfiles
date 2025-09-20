local Plug = vim.fn['plug#']


vim.call('plug#begin')
	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('fatih/vim-go')
  Plug('nathanaelkane/vim-indent-guides')
  Plug('scrooloose/nerdtree')
  Plug('xuyuanp/nerdtree-git-plugin')
  Plug('ryanoasis/vim-devicons')
vim.call('plug#end')
