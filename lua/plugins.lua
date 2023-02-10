return require('packer').startup(function(use)

-----------------------------------------------------------

require'packer'.startup({function()
    end,
    config = {
      display = {
        open_fn = function()
          return require('packer.util').float({ border = 'single' })
        end
      }
}})

-----------------------------------------------------------

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'folke/tokyonight.nvim' }
    use { 'shaunsingh/nord.nvim'}
    use { 'ellisonleao/gruvbox.nvim' }

    -- Autopairs
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

    -- Autocomplete 
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp'
    }

    -- Snippets
    use { 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' }

    -- LSP 
    use { 'neovim/nvim-lspconfig' }

    -- Usefull comments 
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

    -- Color hidhlighter 
    use { 'brenoprata10/nvim-highlight-colors', config = function() require('nvim-highlight-colors').setup {} end }

    -- Managing LSP servers
    use { 'williamboman/mason.nvim' }

    -- Syntax highlight
    use { 'nvim-treesitter/nvim-treesitter' }

    -- Explorer 
    use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }

    -- Fzf finder
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-lua/plenary.nvim'}

    -- Lualine
    use { 'nvim-lualine/lualine.nvim' }

    -- Startup screen
    use { 'goolord/alpha-nvim' }

    -- Git 
    use { 'lewis6991/gitsigns.nvim' }

    -- Blankline
    use { 'lukas-reineke/indent-blankline.nvim', config = function() require('indent_blankline').setup {} end }

    --- Create directory if not exist
    use { 'jghauser/mkdir.nvim' }

    --- Discord Rich Presence 
    use { 'andweeb/presence.nvim' }

    --- Automaticly add shebang
    use { 'samirettali/shebang.nvim' }

    -- Highlight headers in markdown, orgmode, and neorg
    use { 'lukas-reineke/headlines.nvim' }

    -- Markdown preview
    use({ 'iamcco/markdown-preview.nvim', run = function() vim.fn["mkdp#util#install"]() end })

    -- Todo
    -- use { 'oberblastmeister/neuron.nvim', requires = 'nvim-lua/popup.nvim' }

    -- Terminal
    use { 'akinsho/toggleterm.nvim' }

end)
