lvim.colorscheme = "rose-pine"
lvim.transparent_window = true

lvim.plugins = {
  { 'rose-pine/neovim', name = 'rose-pine' },

}

vim.api.nvim_create_autocmd('ColorScheme', {
  command = [[highlight CursorLine guibg=NONE guifg=NONE cterm=underline]]
})

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" }
}
