lvim.colorscheme = "rose-pine"
lvim.transparent_window = true

lvim.plugins = {
  { 'rose-pine/neovim', name = 'rose-pine' }
}

vim.api.nvim_create_autocmd('ColorScheme', {
  command = [[highlight CursorLine guibg=NONE guifg=NONE cterm=underline]]
})

