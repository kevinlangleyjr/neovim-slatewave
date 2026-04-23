-- Core Neovim UI highlight groups.

local M = {}

function M.get(c, opts)
  local bg         = opts.transparent and c.none or c.slate_editor
  local bg_inactive = opts.transparent and c.none or (opts.dim_inactive and c.slate_chrome or c.slate_editor)
  local bg_float   = c.slate_800

  return {
    -- Editor surface
    Normal        = { fg = c.slate_200, bg = bg },
    NormalNC      = { fg = c.slate_200, bg = bg_inactive },
    NormalFloat   = { fg = c.slate_200, bg = bg_float },
    FloatBorder   = { fg = c.slate_700,  bg = bg_float },
    FloatTitle    = { fg = c.teal_300,   bg = bg_float, bold = true },
    FloatFooter   = { fg = c.slate_400,  bg = bg_float },

    -- Cursor
    Cursor        = { fg = c.slate_900, bg = c.teal_300 },
    lCursor       = { fg = c.slate_900, bg = c.teal_300 },
    CursorIM      = { fg = c.slate_900, bg = c.teal_300 },
    TermCursor    = { fg = c.slate_900, bg = c.teal_300 },
    TermCursorNC  = { fg = c.slate_900, bg = c.slate_500 },
    CursorLine    = { bg = opts.transparent and c.none or c.slate_800 },
    CursorColumn  = { bg = opts.transparent and c.none or c.slate_800 },
    CursorLineNr  = { fg = c.teal_300, bold = true },
    LineNr        = { fg = c.slate_500 },
    LineNrAbove   = { fg = c.slate_600 },
    LineNrBelow   = { fg = c.slate_600 },
    SignColumn    = { fg = c.slate_500, bg = bg },
    FoldColumn    = { fg = c.slate_500, bg = bg },
    Folded        = { fg = c.slate_400, bg = c.slate_800, italic = true },
    ColorColumn   = { bg = c.slate_800 },

    -- Selection / search
    Visual        = { bg = c.slate_700 },
    VisualNOS     = { bg = c.slate_700 },
    Search        = { fg = c.slate_900, bg = c.sky_400 },
    IncSearch     = { fg = c.slate_900, bg = c.amber_400 },
    CurSearch     = { fg = c.slate_900, bg = c.amber_400 },
    Substitute    = { fg = c.slate_900, bg = c.rose_400 },
    MatchParen    = { fg = c.teal_300, bold = true, underline = true },

    -- Status / tabs
    StatusLine    = { fg = c.teal_300,  bg = c.slate_800 },
    StatusLineNC  = { fg = c.slate_400, bg = c.slate_800 },
    TabLine       = { fg = c.slate_400, bg = c.slate_chrome },
    TabLineFill   = { bg = c.slate_chrome },
    TabLineSel    = { fg = c.teal_300, bg = c.slate_editor, bold = true },
    WinBar        = { fg = c.slate_300, bg = bg },
    WinBarNC      = { fg = c.slate_500, bg = bg },

    -- Misc surfaces
    Title         = { fg = c.teal_300, bold = true },
    Directory     = { fg = c.teal_300 },
    VertSplit     = { fg = c.slate_800, bg = bg },
    WinSeparator  = { fg = c.slate_800, bg = bg },

    Conceal       = { fg = c.slate_500 },
    NonText       = { fg = c.slate_600 },
    SpecialKey    = { fg = c.slate_600 },
    Whitespace    = { fg = c.slate_700 },
    EndOfBuffer   = { fg = bg, bg = bg },

    -- Popup menu
    Pmenu          = { fg = c.slate_200, bg = c.slate_800 },
    PmenuSel       = { fg = c.teal_300, bg = c.slate_700, bold = true },
    PmenuKind      = { fg = c.slate_400, bg = c.slate_800 },
    PmenuKindSel   = { fg = c.teal_300, bg = c.slate_700 },
    PmenuExtra     = { fg = c.slate_500, bg = c.slate_800 },
    PmenuExtraSel  = { fg = c.slate_400, bg = c.slate_700 },
    PmenuSbar      = { bg = c.slate_800 },
    PmenuThumb     = { bg = c.slate_600 },
    PmenuMatch     = { fg = c.teal_300, bg = c.slate_800, bold = true },
    PmenuMatchSel  = { fg = c.teal_300, bg = c.slate_700, bold = true },

    -- Messages
    MsgArea       = { fg = c.slate_200, bg = bg },
    MsgSeparator  = { fg = c.slate_700, bg = bg },
    MoreMsg       = { fg = c.teal_300, bold = true },
    ModeMsg       = { fg = c.slate_200, bold = true },
    ErrorMsg      = { fg = c.rose_400 },
    WarningMsg    = { fg = c.amber_400 },
    Question      = { fg = c.teal_300 },
    WildMenu      = { fg = c.teal_300, bg = c.slate_800 },
    QuickFixLine  = { bg = c.slate_700, bold = true },

    -- Spell
    SpellBad      = { sp = c.rose_400,  undercurl = true },
    SpellCap      = { sp = c.amber_400, undercurl = true },
    SpellLocal    = { sp = c.sky_400,   undercurl = true },
    SpellRare     = { sp = c.purple,    undercurl = true },

    -- Diff (in-buffer)
    DiffAdd       = { bg = c.diff_add_bg },
    DiffChange    = { bg = c.diff_change_bg },
    DiffDelete    = { fg = c.red_500, bg = c.diff_delete_bg },
    DiffText      = { bg = c.diff_text_bg, bold = true },

    -- Diff syntax (git/diff buffers)
    diffAdded     = { fg = c.teal_300 },
    diffRemoved   = { fg = c.rose_400 },
    diffChanged   = { fg = c.amber_400 },
    diffOldFile   = { fg = c.rose_400 },
    diffNewFile   = { fg = c.teal_300 },
    diffFile      = { fg = c.sky_400 },
    diffLine      = { fg = c.slate_500 },
    diffIndexLine = { fg = c.purple },

    -- Diagnostics
    DiagnosticError                = { fg = c.rose_400 },
    DiagnosticWarn                 = { fg = c.amber_400 },
    DiagnosticInfo                 = { fg = c.sky_400 },
    DiagnosticHint                 = { fg = c.teal_300 },
    DiagnosticOk                   = { fg = c.teal_300 },

    DiagnosticVirtualTextError     = { fg = c.rose_400 },
    DiagnosticVirtualTextWarn      = { fg = c.amber_400 },
    DiagnosticVirtualTextInfo      = { fg = c.sky_400 },
    DiagnosticVirtualTextHint      = { fg = c.teal_300 },
    DiagnosticVirtualTextOk        = { fg = c.teal_300 },

    DiagnosticUnderlineError       = { sp = c.rose_400,  undercurl = true },
    DiagnosticUnderlineWarn        = { sp = c.amber_400, undercurl = true },
    DiagnosticUnderlineInfo        = { sp = c.sky_400,   undercurl = true },
    DiagnosticUnderlineHint        = { sp = c.teal_300,  undercurl = true },
    DiagnosticUnderlineOk          = { sp = c.teal_300,  undercurl = true },

    DiagnosticSignError            = { fg = c.rose_400 },
    DiagnosticSignWarn             = { fg = c.amber_400 },
    DiagnosticSignInfo             = { fg = c.sky_400 },
    DiagnosticSignHint             = { fg = c.teal_300 },
    DiagnosticSignOk               = { fg = c.teal_300 },

    DiagnosticFloatingError        = { fg = c.rose_400,  bg = bg_float },
    DiagnosticFloatingWarn         = { fg = c.amber_400, bg = bg_float },
    DiagnosticFloatingInfo         = { fg = c.sky_400,   bg = bg_float },
    DiagnosticFloatingHint         = { fg = c.teal_300,  bg = bg_float },
    DiagnosticFloatingOk           = { fg = c.teal_300,  bg = bg_float },

    DiagnosticDeprecated           = { sp = c.slate_500, strikethrough = true },
    DiagnosticUnnecessary          = { fg = c.slate_500 },

    -- LSP
    LspReferenceText               = { bg = c.slate_700 },
    LspReferenceRead               = { bg = c.slate_700 },
    LspReferenceWrite              = { bg = c.slate_700 },
    LspCodeLens                    = { fg = c.slate_500, italic = true },
    LspCodeLensSeparator           = { fg = c.slate_600 },
    LspSignatureActiveParameter    = { fg = c.teal_300, bold = true },
    LspInlayHint                   = { fg = c.slate_400, bg = c.slate_800 },

    -- Healthcheck
    healthError    = { fg = c.rose_400 },
    healthSuccess  = { fg = c.teal_300 },
    healthWarning  = { fg = c.amber_400 },

    -- Misc
    NvimInternalError = { fg = c.rose_400 },
    Debug             = { fg = c.amber_400 },
    Todo              = { fg = c.slate_900, bg = c.amber_400, bold = true },
  }
end

return M
