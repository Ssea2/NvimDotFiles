-- https://github.com/3rd/image.nvim
vim.pack.add({
	'https://github.com/3rd/image.nvim.git'
})

require("image").setup({
  backend = "kitty", -- or "ueberzug" or "sixel"
  processor = "magick_cli", -- or "magick_rock"
  max_width = 100, -- tweak to preference
  max_height = 12, -- ^
  max_height_window_percentage = math.huge, -- this is necessary for a good experience
  max_width_window_percentage = math.huge,
  window_overlap_clear_enabled = true,
  window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
	integrations = {
    markdown = {
      enabled = true,
      clear_in_insert_mode = false,
      download_remote_images = true,
      only_render_image_at_cursor = false,
      only_render_image_at_cursor_mode = "popup", -- or "inline"
      floating_windows = false, -- if true, images will be rendered in floating markdown windows
      filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
		resolve_image_path = function(document_path, image_path, fallback)
        -- document_path is the path to the file that contains the image
        -- image_path is the potentially relative path to the image. for
        -- markdown it's `![](this text)`

        -- you can call the fallback function to get the default behavior
        return fallback(document_path, image_path)
      end,
    },
    asciidoc = {
      enabled = true,
      clear_in_insert_mode = false,
      download_remote_images = true,
      only_render_image_at_cursor = false,
      only_render_image_at_cursor_mode = "popup",
      floating_windows = false,
      filetypes = { "asciidoc", "adoc" },
    },
    neorg = {
      enabled = true,
      filetypes = { "norg" },
    },
    rst = {
      enabled = true,
    },
    typst = {
      enabled = true,
      filetypes = { "typst" },
    },
    html = {
      enabled = false,
    },
    css = {
      enabled = false,
    },
  },
  scale_factor = 1.0,
  kitty_direct_chunk_size = 4096, -- chunk size for direct Kitty graphics protocol transmission
  editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
  tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
})
