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
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

    {
        "LazyVim/LazyVim",
        opts = {
            -- catppuccin-frappe
            colorscheme = "tokyonight",
            --colorscheme = "bearded_arc",
        },
    },
}
