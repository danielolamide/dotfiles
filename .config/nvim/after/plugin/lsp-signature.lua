local status_ok, lsp_signature = pcall(require, "lsp_signature")

if not status_ok then
  return
end

lsp_signature.setup({
  --[[ floating_window_above_cur_line = false,
  floating_window_off_y = 2 ]]
  floating_window = false
})
