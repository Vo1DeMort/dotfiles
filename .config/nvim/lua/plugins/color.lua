return {

    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = true,
                },
            })
        end,
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
