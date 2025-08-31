return {

    {
        "sainnhe/sonokai",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
        end,
    },
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
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "solarized",
        },
    },
}
