require'lualine'.setup({
  options = {
      section_separators = { left = '', right = ''}, 
      component_separators = ''
  },
  sections = {
    lualine_c = { 'filename', require('pomodoro').statusline }
  }
})
