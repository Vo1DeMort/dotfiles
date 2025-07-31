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
    { "xStormyy/bearded-theme.nvim" },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
            --colorscheme = "vaporwave",
        },
    },
    -- https://chatgpt.com/share/688b8723-30d8-8006-90cb-ed4edf121ab3
}
