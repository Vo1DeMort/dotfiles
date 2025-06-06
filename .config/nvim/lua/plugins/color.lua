return {

    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_background = "medium"
            vim.g.gruvbox_material_foreground = "original"
        end,
    },

    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
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
