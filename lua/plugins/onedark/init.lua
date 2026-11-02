-- https://github.com/navarasu/onedark.nvim.git 
vim.pack.add { 
	{ 
		src = "https://github.com/navarasu/onedark.nvim.git", 
		name = "onedark" 
	} 
}

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
