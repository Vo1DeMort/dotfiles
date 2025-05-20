return {

    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup({
                style = "deep",
                transparent = true,
                lualine = {
                    transparent = true,
                },
            })
        end,
    },
    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        ---@type solarized.config
        opts = {
            variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
            transparent = {
                enabled = true, -- Master switch to enable transparency
            },
        },
        config = function(_, opts)
            vim.o.termguicolors = true
            vim.o.background = "dark"
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
