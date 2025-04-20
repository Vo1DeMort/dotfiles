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
