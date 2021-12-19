local nightfox = require('nightfox')

nightfox.setup({
    fox = 'nordfox', -- change the colorscheme
    styles = {
        comments = 'italic',
        functions = 'italic',
    },
})

-- load the configurations
nightfox.load()
