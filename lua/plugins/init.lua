return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'                                    --> packer plugin manager
    use 'kyazdani42/nvim-web-devicons'                              --> enable icons
    use 'norcalli/nvim-colorizer.lua'
    use 'EdenEast/nightfox.nvim'                                    --> nightfox colorsceme for neovim
    use 'nvim-lualine/lualine.nvim'                                 --> a statusline written in lua
    use 'romgrk/barbar.nvim'                                        --> tabs for neovim
    use 'kyazdani42/nvim-tree.lua'                                  --> file explorer
    use 'windwp/nvim-autopairs'                                     --> autopairs for neovim written in lua
    use 'lukas-reineke/indent-blankline.nvim'                       --> indent guides for neovim
    use 'akinsho/toggleterm.nvim'    
    use 'nvim-lua/plenary.nvim'                         
    use 'nvim-telescope/telescope.nvim'                             --> Find, Filter, Preview, Pick. All lua, all the time. 
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }    --> treesitter
    use 'neovim/nvim-lspconfig'                                     --> Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp'                                          --> Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'                                      --> LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'                                  --> Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'                                          --> Snippets plugin
end)
