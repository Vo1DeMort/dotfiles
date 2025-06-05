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
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
    },
    {
        "sainnhe/sonokai",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.sonokai_enable_italic = true
        end,
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "sonokai",
        },
    },
}
