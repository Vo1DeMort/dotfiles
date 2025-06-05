return {
    {
        "snacks.nvim",
        opts = {

            --NOTE: zen mode
            zen = {
                ---@type table<string, boolean>
                toggles = {
                    dim = false,
                    git_signs = false,
                    mini_diff_signs = false,
                    -- diagnostics = false,
                    -- inlay_hints = false,
                },
                show = {
                    statusline = true, -- can only be shown when using the global statusline
                    tabline = false,
                },
                win = {
                    backdrop = {
                        transparent = false,
                        blend = 99,
                    },
                },
            },

            --NOTE: dashboard
            dashboard = {
                preset = {
                    header = [[
                    
  :::.     .        :       ...    :::::::..      .-:::::' :::. :::::::::::::::
  ;;`;;    ;;,.    ;;;   .;;;;;;;. ;;;;``;;;;     ;;;''''  ;;`;;;;;;;;;;'''';;;
 ,[[ '[[,  [[[[, ,[[[[, ,[[     \[[,[[[,/[[['     [[[,,== ,[[ '[[,   [[     [[[
c$$$cc$$$c $$$$$$$$"$$$ $$$,     $$$$$$$$$c       `$$$"``c$$$cc$$$c  $$     $$$
 888   888,888 Y88" 888o"888,_ _,88P888b "88bo,   888    888   888, 88,    888
 YMM   ""` MMM  M'  "MMM  "YMMMMMP" MMMM   "W"    "MM,   YMM   ""`  MMM    MMM
        ]],
                },
            },

            --NOTE: file explorer
            picker = {
                sources = {
                    explorer = {
                        layout = { layout = { position = "right" } },
                    },
                },
            },

            --NOTE: terminal
            terminal = {
                win = {
                    position = "float",
                    border = "rounded",
                },
            },
        },
    },
}
