--> Neorg parser configs <--
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

parser_configs.norg_meta = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
        files = { "src/parser.c" },
        branch = "main"
    },
}

parser_configs.norg_table = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
        files = { "src/parser.c" },
        branch = "main"
    },
}

require'nvim-treesitter.configs'.setup {
    --> parsers <--
    ensure_installed = {
        'python',
        'bash',
        'fish',
        'javascript',
        'lua',
        'typescript',
        'norg',
        'norg_meta',
        'norg_table',
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    --> textobjects selection <--
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
        --> LSP interop <--
        lsp_interop = {
            enable = true,
            border = 'none',
            peek_definition_code = {
                ["<leader>df"] = "@function.outer",
                ["<leader>dF"] = "@class.outer",
            },
        },
    },
    --> moving between textobjext <--
    move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
            ["]]"] = "@function.outer",
            ["]m"] = "@class.outer",
        },
        goto_next_end = {
            ["]["] = "@function.outer",
            ["]M"] = "@class.outer",
        },
        goto_previous_start = {
            ["[["] = "@function.outer",
            ["[m"] = "@class.outer",
        },
        goto_previous_end = {
            ["[]"] = "@function.outer",
            ["[M"] = "@class.outer",
        },
    },
}
