local neogit = require('neogit')

neogit.setup {
  signs = {
    section = {"󰌕", "󰌖"},
    item = {"", ""},
  },
  integrations = {
    diffview = true
  }
}
