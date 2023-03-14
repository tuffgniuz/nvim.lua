require('gitsigns').setup{
  signs = {
    add = { text = '+' },
  },
  signcolumn = true,
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align'
  }
}
