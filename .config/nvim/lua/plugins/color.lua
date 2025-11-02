return {

    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        ---@type solarized.config
        opts = {
            variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
            transparent = { enabled = false },
        },
        config = function(_, opts)
            require("solarized").setup(opts)
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("github-theme").setup({
                -- ...
            })
        end,
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "solarized",
        },
    },
}
