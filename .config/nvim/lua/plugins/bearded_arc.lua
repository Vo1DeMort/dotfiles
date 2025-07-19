-- NOTE: this colorscheme is inspired by nv chad
--
--
-- TODO: needs tuning , will do later
vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "bearded_arc"

local set = vim.api.nvim_set_hl

local colors = {
    bg = "#1c2433",
    bg_dark = "#19212e",
    fg = "#ABB7C1",
    grey = "#444c5b",
    grey_fg = "#4e5665",
    red = "#FF738A",
    pink = "#F38CEC",
    purple = "#bd93ff",
    dark_purple = "#B78AFF",
    green = "#3CEC85",
    vibrant_green = "#9bdead",
    yellow = "#EACD61",
    orange = "#FF955C",
    cyan = "#22ECDB",
    blue = "#69C3FF",
    nord_blue = "#6da4cd",
    teal = "#12c7c4",
}

-- Standard highlight groups
set(0, "Normal", { fg = colors.fg, bg = colors.bg })
set(0, "Comment", { fg = colors.grey, italic = true })
set(0, "Constant", { fg = colors.pink })
set(0, "String", { fg = colors.green })
set(0, "Identifier", { fg = colors.purple })
set(0, "Function", { fg = colors.blue })
set(0, "Statement", { fg = colors.yellow })
set(0, "Keyword", { fg = colors.red })
set(0, "Type", { fg = colors.cyan })
set(0, "Special", { fg = colors.orange })

-- UI
set(0, "CursorLine", { bg = "#232b3a" })
set(0, "CursorLineNr", { fg = colors.yellow, bold = true })
set(0, "LineNr", { fg = colors.grey_fg })
set(0, "VertSplit", { fg = "#303847" })
set(0, "StatusLine", { fg = colors.fg, bg = colors.bg_dark, bold = true })
set(0, "StatusLineNC", { fg = colors.grey_fg, bg = colors.bg })

-- Treesitter (example)
set(0, "@variable.parameter", { fg = colors.pink })
set(0, "@attribute", { fg = colors.purple })
