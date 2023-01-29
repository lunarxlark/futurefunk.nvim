local M = {}

M.load = function()
  -- reset colors
  if vim.g.colors_name then
    vim.cmd([[hi clear]])
  end

  -- {{{
  vim.o.termguicolors = true
  vim.g.colors_name = "futurepunk"
  vim.o.background = "dark" -- TODO : light対応
  -- }}}

  local white = {
    base = "#faeece",
    shade = "#eaecc2",
    tint = "#e9e9e9",
  }

  local gray = {
    base = "#717077",
    shade = "#4f4e53",
    tint = "#8d8d92",
  }

  local black = {
    base = "#282828",
    shade = "#1c1c1c",
    tint = "#3e3e3e",
  }

  local night = {
    base = "#31486f",
    shade = "#22324e",
    tint = "#8391a9",
  }

  local blue = {
    base = "#0673A2",
    shade = "#055172",
    tint = "#3F98BF",
  }

  local green = {
    base = "#06A2A2",
    shade = "#057272",
    tint = "#3FBFBF",
  }

  local yellow = {
    base = "#F9C05D",
    shade = "#AF8741",
    tint = "#FBD38D",
  }

  local orange = {
    base = "#F98C5D",
    shade = "#AF6241",
    tint = "#FBAE8D",
  }

  local red = {
    base = "#F95D5D",
    shade = "#AF4141",
    tint = "#FB8D8D",
  }

  local groups = {
    -- for builtin
    ColorColumn = { bg = red.base },
    Conceal = { fg = black.tint, bg = gray.base },
    CurSearch = { link = "Search" },
    -- Cursor = {},
    -- lCursor = {},
    -- CursorIM = {},
    -- CursorColumn = {},
    CursorLine = { bg = black.shade },
    -- Directory = {},
    DiffAdd = { fg = green.base },
    DiffChange = { fg = yellow.base },
    DiffDelete = { fg = red.base },
    -- DiffText = {},
    -- EndOfBuffer = {},
    -- TermCursor = {},
    -- TermCursorNC = {},
    -- ErrorMsg = {},
    -- WinSeparator = {},
    Folded = { fg = gray.base, bg = black.tint },
    -- FoldColumn = {},
    -- SignColumn = {},
    -- IncSearch = {},
    -- Substitute = {},
    LineNr = { fg = yellow.base },
    -- LineNrAbove = {},
    -- LineNrBelow = {},
    CursorLineNr = { fg = yellow.base, bold = true },
    -- CursorLineFold = {},
    -- CursorLineSign = {},
    -- MatchParen = {},
    -- ModeMsg = {},
    -- MsgArea = {},
    -- MsgSeparator = {},
    -- MoreMsg = {},
    NonText = { bold = true, fg = night.base },
    Normal = { fg = white.base, bg = black.base },
    NormalFloat = { fg = white.base, bg = black.tint },
    -- NormalNC = {},
    Pmenu = { bg = black.tint },
    PmenuSel = { bg = night.shade },
    -- PmenuSbar = {},
    -- PmenuThumb = {},
    -- Question = {},
    -- QuickFixLine = {},
    Search = { bg = night.base },
    -- SpecialKey = {},
    -- SpellBad = {},
    -- SpellCap = {},
    -- SpellLocal = {},
    -- SpellRare = {},
    -- StatusLine = {},
    -- StatusLineNC = {},
    -- TabLine = {},
    -- TabLineFill = {},
    -- TabLineSel = {},
    Title = { fg = red.base },
    Visual = { bg = black.tint },
    -- VisualNOS = {},
    -- WarningMsg = {},
    -- Whitespace = {},
    -- WildMenu = {},
    -- WinBar = {},
    -- WinBarNC = {},

    -- for statuslineにはUser1 - User9というのを使っている？
    -- User1 = {},
    -- User2 = {},
    -- User3 = {},
    -- User4 = {},
    -- User5 = {},
    -- User6 = {},
    -- User7 = {},
    -- User8 = {},
    -- User9 = {},

    -- for GUI
    -- Menu = {},
    -- Scrollbar = {},
    -- Tooltip = {},

    -- for syntax
    Comment = { fg = gray.base }, -- preferred
    Constant = { fg = red.tint }, -- preferred
    String = { fg = blue.base },
    -- Character
    -- Number
    -- Boolean
    -- Float

    Identifier = { fg = white.base }, -- preferred
    Function = { fg = yellow.base },

    Statement = { fg = red.base }, -- preferred
    -- Conditional
    -- Repeat
    -- Label
    -- Operator
    -- Keyword
    -- Exception

    PreProc = { fg = yellow.base }, -- preferred
    -- Include
    -- Define
    -- Macro
    -- PreCondit

    Type = { fg = green.base }, -- preferred
    -- StorageClass
    -- Structure
    Typedef = { fg = green.base },

    Special = { fg = orange.base }, -- preferred
    -- SpecialChar
    -- Tag
    -- Delimiter
    -- SpecialComment
    -- Debug

    -- Underlined = {}, -- preferred

    -- Ignore = {}, -- preferred

    -- Error = {}, -- preferred

    -- TODO : test
    -- Todo = { fg = deep, bg = blue }, -- preferred

    -- for treesitter
    -- ["@function_declaration.result.type_identifier"] = { bg = red.base },
    ["@function.builtin"] = { fg = red.tint },
    ["@method.call"] = { fg = yellow.base },
    ["@import.spec.list"] = { fg = white.base },

    -- for nvim-cmp
    -- CmpItemKind = { bg = deep },
    -- CmpItemMenu = { bg = deep },
    -- CmpItemMenuDefault = { bg = "#ebdbb2" },

    -- for noice
    NoicePopupMenu = { link = "NormalFloat" },

    -- for lualine

    -- for neotest
    NeotestPassed = { fg = green.base },
    NeotestRunning = { fg = yellow.base },
    NeotestFailed = { fg = red.base },
    NeotestSkipped = { fg = gray.base },
    NeotestNamespace = { fg = red.base },
    NeotestAdapterName = { fg = red.base, bold = true },
    NeotestDir = { fg = blue.base },
    NeotestFile = { fg = white.base, bold = true },
    -- NeotestTarget = { fg = white, bold = true },
  }

  for group, opt in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opt)
  end
end

return M
