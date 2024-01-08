vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
        --config = function()
        --    vim.cmd('colorscheme rose-pine')
        --end
    })
    use('https://gitlab.com/__tpb/acme.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use("nvim-treesitter/nvim-treesitter-context");
    use("theprimeagen/harpoon")
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
--            { 'neovim/nvim-lspconfig' },
--            { 'williamboman/mason.nvim' },
--            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use({
        "Pocco81/true-zen.nvim",
        config = function()
            require("true-zen").setup {
                -- your config goes here
                -- or just leave it empty :)
            }
        end,
    })

    use({ "zbirenbaum/copilot.lua" })
    use("psliwka/termcolors.nvim")
    use({ "catppuccin/nvim", as = "catppuccin" })
    use("sudoerwx/vim-ray-so-beautiful")
    use("kristijanhusak/vim-carbon-now-sh")
    use("xiyaowong/transparent.nvim")
end)
