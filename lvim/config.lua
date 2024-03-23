lvim.transparent_window = true

lvim.colorscheme = "rose-pine"

lvim.plugins = {
  { '/mattn/emmet-vim' },
  { '/tpope/vim-surround' },
  { 'ThePrimeagen/vim-be-good' },
  { "rose-pine/neovim", name = "rose-pine" }
}

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" }
}

