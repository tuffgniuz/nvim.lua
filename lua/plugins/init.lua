return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'                                    --> packer plugin manager
    use 'kyazdani42/nvim-web-devicons'                              --> enable icons
    use 'EdenEast/nightfox.nvim'                                    --> nightfox colorsceme for neovim
    use 'nvim-lualine/lualine.nvim'                                 --> a statusline written in lua
    use 'romgrk/barbar.nvim'                                        --> tabs for neovim
    use 'kyazdani42/nvim-tree.lua'                                  --> file explorer
    use 'windwp/nvim-autopairs'                                     --> autopairs for neovim written in lua
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }    --> treesitter

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
end)
