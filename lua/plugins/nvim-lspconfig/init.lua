-- https://github.com/neovim/nvim-lspconfig

--vim.pack.add({
  -- Quickstart configs for LSP
  --'https://github.com/neovim/nvim-lspconfig',
--})

--local lsp_server_ = {
--	'bash-language-server',
--	'lua-language-server',
--	'deno',
--	'vscode-html-languageserver',
--	'vscode-css-languageserver',
--	"pyright"
--}

--local files_types = {
--	{"sh", "bash"},
--	{"lua"},
--	{"javascript"},
--	{"html"},
--	{"css"},
--	{"python"}
--}


--for idx, server in ipairs(lsp_server_) do
--	vim.lsp.config(server, {
--		cmd = { server, "--stdio" },
--		filetypes = files_types[idx],
--	})

---
--	vim.lsp.enable(server)
--end
--
vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.config("bashls", {
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh", "bash" },
})

vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
})

vim.lsp.config("html", {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
})

vim.lsp.config("cssls", {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
})

vim.lsp.config("pyright", {
  filetypes = { "python" },
})

vim.lsp.config("denols", {
  cmd = { "deno", "lsp" },

  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
})

vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },

  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
})


vim.lsp.enable({
  "bashls",
  "lua_ls",
  "denols",
  "html",
  "cssls",
  "pyright",
  "ts_ls"
})


