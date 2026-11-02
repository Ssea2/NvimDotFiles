-- https://github.com/nvim-tree/nvim-tree.lua
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' }, -- optional
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})

-- empty setup using defaults
require("nvim-tree").setup({
  filters = {
    git_ignored = false,
  },
})

vim.keymap.set( 'n', 'To', '<cmd>NvimTreeOpen<cr>', { silent = true })
vim.keymap.set( 'n', 'Tc', '<cmd>NvimTreeClose<cr>', { silent = true })
