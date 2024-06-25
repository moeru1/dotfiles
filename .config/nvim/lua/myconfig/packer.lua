return require('lazy').setup({
	{'wbthomason/packer.nvim'},
	{'neovim/nvim-lspconfig'},

    {'nvim-telescope/telescope.nvim', tag = '0.1.4'},
    { 'nvim-lua/plenary.nvim' }, 
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
        'rose-pine/neovim',
        as = 'rose-pine'
        --config = function()
        --    vim.cmd('colorscheme rose-pine')
        --end
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-treesitter/playground'},
    {"nvim-treesitter/nvim-treesitter-context"},
    {"theprimeagen/harpoon"},
    {'mbbill/undotree'},
    {'tpope/vim-fugitive'},

    {'VonHeikemen/lsp-zero.nvim',branch = 'v1.x'},
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

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

    {
        "Pocco81/true-zen.nvim",
        config = function()
            require("true-zen").setup {
                -- your config goes here
                -- or just leave it empty :)
            }
        end,
    },

    { "zbirenbaum/copilot.lua" },
    {"psliwka/termcolors.nvim"},
    { "catppuccin/nvim", as = "catppuccin" }
})
