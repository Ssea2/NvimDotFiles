-- https://github.com/goerz/jupytext.nvim
vim.pack.add(
	{
		'https://github.com/goerz/jupytext.nvim.git'
	})

opts = {
  jupytext = 'jupytext',
  format = "py:percent",
  update = true,
  filetype = require("jupytext").get_filetype,
  new_template = require("jupytext").default_new_template(),
  sync_patterns = { '*.md', '*.py', '*.jl', '*.R', '*.Rmd', '*.qmd' },
  autosync = true,
  handle_url_schemes = true,
}



require("jupytext").setup(opts)

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.py", "*.ipynb" },
    callback = function()
        vim.bo.filetype = "python"
    end,
})
