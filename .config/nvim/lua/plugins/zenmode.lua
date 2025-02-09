return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
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
      },
    },
  },
}
