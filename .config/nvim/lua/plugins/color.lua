return {

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
                styles = {
                    keywords = { italic = false },
                    sidebar = "normal",
                    floats = "normal",
                },
            })
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
            --colorscheme = "vaporwave",
        },
    },
}
