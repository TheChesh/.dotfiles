return require("packer").startup(function()
    -- to keep packer updated
    use("wbthomason/packer.nvim")
    -- plenary
    use("nvim-lua/plenary.nvim")
    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    -- telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim"
    }
    -- neogit 
    use {
        "TimUntersberger/neogit",
        requires = "nvim-lua/plenary.nvim"
    }
    -- colorscheme
    use("folke/tokyonight.nvim")
end)
