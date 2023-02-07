local P = require("futurefunk.palette")

local M = {}

M.load = function()
  -- reset colors
  if vim.g.colors_name then
    vim.cmd([[hi clear]])
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "futurefunk"
  vim.o.background = "dark" -- TODO : light対応

  local groups = {
    -- for builtin
    ColorColumn = { bg = P.red.base },
    Conceal = { fg = P.black.tint, bg = P.gray.base },
    CurSearch = { link = "Search" },
    -- Cursor = {},
    -- lCursor = {},
    -- CursorIM = {},
    -- CursorColumn = {},
    CursorLine = { bg = P.black.shade },
    -- Directory = {},
    DiffAdd = { fg = P.green.base },
    DiffChange = { fg = P.yellow.base },
    DiffDelete = { fg = P.red.base },
    -- DiffText = {},
    -- EndOfBuffer = {},
    -- TermCursor = {},
    -- TermCursorNC = {},
    -- ErrorMsg = {},
    -- WinSeparator = {},
    Folded = { fg = P.gray.base, bg = P.black.tint },
    -- FoldColumn = {},
    -- SignColumn = {},
    -- IncSearch = {},
    -- Substitute = {},
    LineNr = { fg = P.yellow.base },
    -- LineNrAbove = {},
    -- LineNrBelow = {},
    CursorLineNr = { fg = P.yellow.base, bold = true },
    -- CursorLineFold = {},
    -- CursorLineSign = {},
    -- MatchParen = {},
    -- ModeMsg = {},
    -- MsgArea = {},
    -- MsgSeparator = {},
    -- MoreMsg = {},
    NonText = { bold = true, fg = P.night.base },
    Normal = { fg = P.white.base, bg = P.black.base },
    NormalFloat = { fg = P.white.base, bg = P.black.tint },
    -- NormalNC = {},
    Pmenu = { bg = P.black.tint },
    PmenuSel = { bg = P.night.shade },
    -- PmenuSbar = {},
    -- PmenuThumb = {},
    -- Question = {},
    -- QuickFixLine = {},
    Search = { bg = P.night.base },
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
    Title = { fg = P.red.base },
    Visual = { bg = P.black.tint },
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
    Comment = { fg = P.gray.base }, -- preferred
    Constant = { fg = P.red.tint }, -- preferred
    String = { fg = P.blue.base },
    -- Character
    -- Number
    -- Boolean
    -- Float

    Identifier = { fg = P.white.base }, -- preferred
    Function = { fg = P.yellow.base },

    Statement = { fg = P.red.base }, -- preferred
    -- Conditional
    -- Repeat
    -- Label
    -- Operator
    -- Keyword
    -- Exception

    PreProc = { fg = P.yellow.base }, -- preferred
    -- Include
    -- Define
    -- Macro
    -- PreCondit

    Type = { fg = P.green.base }, -- preferred
    -- StorageClass
    -- Structure
    Typedef = { fg = P.green.base },

    Special = { fg = P.orange.base }, -- preferred
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
    ["@function.builtin"] = { fg = P.red.tint },
    ["@method.call"] = { fg = P.yellow.base },
    ["@import.spec.list"] = { fg = P.white.base },

    -- for nvim-cmp
    -- CmpItemKind = { bg = deep },
    -- CmpItemMenu = { bg = deep },
    -- CmpItemMenuDefault = { bg = "#ebdbb2" },

    -- for noice
    NoicePopupMenu = { link = "NormalFloat" },

    -- for lualine

    -- for neotest
    NeotestPassed = { fg = P.green.base },
    NeotestRunning = { fg = P.yellow.base },
    NeotestFailed = { fg = P.red.base },
    NeotestSkipped = { fg = P.gray.base },
    NeotestNamespace = { fg = P.red.base },
    NeotestAdapterName = { fg = P.red.base, bold = true },
    NeotestDir = { fg = P.blue.base },
    NeotestFile = { fg = P.white.base, bold = true },
    -- NeotestTarget = { fg = white, bold = true },

    -- tabline
    -- TabLineFill = {}
  }

  for group, opt in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opt)
  end
end

return M
