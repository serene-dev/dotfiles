
local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  return
end

bufferline.setup {
  options = {
    mode = "buffers",
    numbers = "ordinal",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,
    always_show_bufferline = false,
  },
  highlights = {
    buffer_selected = {
      --guifg = "#2c2d30",
      --guibg = "#b1b4b9"
    }
  }
}

