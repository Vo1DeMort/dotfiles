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
    --{ "ellisonleao/gruvbox.nvim" },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
}
