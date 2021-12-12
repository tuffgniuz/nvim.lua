require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      'python',
      'bash',
      'fish',
      'javascript',
      'lua',
      'typescript',
  }, 
  sync_install = false, 
  ignore_install = {}, 
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
