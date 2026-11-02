-- https://github.com/benlubas/molten-nvim
vim.pack.add({
	'https://github.com/benlubas/molten-nvim.git'
})

--require('molten-vim').setup()

vim.g.molten_image_provider = "image.nvim"
vim.g.molten_output_win_max_height = 20

vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })

vim.keymap.set("n", "<localleader>rd", ":MoltenDelete<CR>",
    { silent = true, desc = "molten delete cell" })
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>",
    { silent = true, desc = "hide output" })
vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>",
    { silent = true, desc = "show/enter output" })


vim.g.python3_host_prog = vim.fn.expand('~/.local/share/nvim/moltenvenv/bin/python3')
-- Dans votre configuration (init.lua ou plugin/molten.lua)
vim.g.molten_cell_delineator = "# %%.*"
