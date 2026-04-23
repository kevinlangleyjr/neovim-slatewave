-- Third-party plugin highlight groups.
-- Each section is gated on opts.plugins.<name> so users can turn off
-- any coverage they want to handle themselves.

local M = {}

function M.get(c, opts)
  local p = opts.plugins or {}
  local hl = {}

  local function add(t)
    for k, v in pairs(t) do hl[k] = v end
  end

  local tree_bg = opts.transparent and c.none or c.slate_chrome

  -- gitsigns.nvim
  if p.gitsigns ~= false then
    add({
      GitSignsAdd              = { fg = c.teal_300 },
      GitSignsChange           = { fg = c.rose_400 },
      GitSignsDelete           = { fg = c.red_500 },
      GitSignsAddNr            = { fg = c.teal_300 },
      GitSignsChangeNr         = { fg = c.rose_400 },
      GitSignsDeleteNr         = { fg = c.red_500 },
      GitSignsAddLn            = { bg = c.diff_add_bg },
      GitSignsChangeLn         = { bg = c.diff_change_bg },
      GitSignsDeleteLn         = { bg = c.diff_delete_bg },
      GitSignsUntracked        = { fg = c.sky_400 },
      GitSignsCurrentLineBlame = { fg = c.slate_500, italic = true },
      GitSignsAddInline        = { bg = c.diff_add_bg },
      GitSignsDeleteInline     = { bg = c.diff_delete_bg },
      GitSignsChangeInline     = { bg = c.diff_change_bg },
    })
  end

  -- nvim-tree
  if p.nvim_tree ~= false then
    add({
      NvimTreeNormal           = { fg = c.slate_300, bg = tree_bg },
      NvimTreeNormalNC         = { fg = c.slate_300, bg = tree_bg },
      NvimTreeEndOfBuffer      = { fg = tree_bg, bg = tree_bg },
      NvimTreeVertSplit        = { fg = c.slate_800, bg = tree_bg },
      NvimTreeWinSeparator     = { fg = c.slate_800, bg = tree_bg },
      NvimTreeStatusLine       = { fg = c.slate_400, bg = c.slate_800 },
      NvimTreeStatusLineNC     = { fg = c.slate_500, bg = tree_bg },
      NvimTreeRootFolder       = { fg = c.teal_300, bold = true },
      NvimTreeFolderIcon       = { fg = c.teal_300 },
      NvimTreeFolderName       = { fg = c.slate_200 },
      NvimTreeEmptyFolderName  = { fg = c.slate_500 },
      NvimTreeOpenedFolderName = { fg = c.teal_300, bold = true },
      NvimTreeFileName         = { fg = c.slate_300 },
      NvimTreeOpenedFile       = { fg = c.slate_200, bold = true },
      NvimTreeModifiedFile     = { fg = c.rose_400 },
      NvimTreeExecFile         = { fg = c.teal_200, bold = true },
      NvimTreeSpecialFile      = { fg = c.teal_200, underline = true },
      NvimTreeImageFile        = { fg = c.purple },
      NvimTreeSymlink          = { fg = c.purple },
      NvimTreeGitDirty         = { fg = c.rose_400 },
      NvimTreeGitStaged        = { fg = c.amber_400 },
      NvimTreeGitNew           = { fg = c.sky_400 },
      NvimTreeGitRenamed       = { fg = c.sky_400 },
      NvimTreeGitDeleted       = { fg = c.red_500 },
      NvimTreeGitMerge         = { fg = c.orange_red },
      NvimTreeGitIgnored       = { fg = c.slate_600 },
      NvimTreeIndentMarker     = { fg = c.slate_guide },
      NvimTreeCursorLine       = { bg = c.slate_800 },
      NvimTreeWindowPicker     = { fg = c.slate_900, bg = c.teal_300, bold = true },
    })
  end

  -- neo-tree.nvim
  if p.neo_tree ~= false then
    add({
      NeoTreeNormal               = { fg = c.slate_300, bg = tree_bg },
      NeoTreeNormalNC             = { fg = c.slate_300, bg = tree_bg },
      NeoTreeEndOfBuffer          = { fg = tree_bg, bg = tree_bg },
      NeoTreeRootName             = { fg = c.teal_300, bold = true },
      NeoTreeDirectoryName        = { fg = c.slate_200 },
      NeoTreeDirectoryIcon        = { fg = c.teal_300 },
      NeoTreeFileName             = { fg = c.slate_300 },
      NeoTreeFileIcon             = { fg = c.slate_400 },
      NeoTreeSymbolicLinkTarget   = { fg = c.purple },
      NeoTreeModified             = { fg = c.rose_400 },
      NeoTreeDotfile              = { fg = c.slate_500 },
      NeoTreeHiddenByName         = { fg = c.slate_500 },
      NeoTreeIndentMarker         = { fg = c.slate_guide },
      NeoTreeExpander             = { fg = c.slate_500 },
      NeoTreeCursorLine           = { bg = c.slate_800 },
      NeoTreeTitleBar             = { fg = c.teal_300, bg = c.slate_800, bold = true },
      NeoTreeTabActive            = { fg = c.teal_300, bg = tree_bg, bold = true },
      NeoTreeTabInactive          = { fg = c.slate_500, bg = c.slate_800 },
      NeoTreeTabSeparatorActive   = { fg = tree_bg, bg = tree_bg },
      NeoTreeTabSeparatorInactive = { fg = c.slate_800, bg = c.slate_800 },
      NeoTreeGitAdded             = { fg = c.teal_300 },
      NeoTreeGitModified          = { fg = c.rose_400 },
      NeoTreeGitDeleted           = { fg = c.red_500 },
      NeoTreeGitStaged            = { fg = c.amber_400 },
      NeoTreeGitUntracked         = { fg = c.sky_400 },
      NeoTreeGitRenamed           = { fg = c.sky_400 },
      NeoTreeGitIgnored           = { fg = c.slate_600 },
      NeoTreeGitConflict          = { fg = c.orange_red },
      NeoTreeFloatBorder          = { fg = c.slate_700, bg = c.slate_800 },
      NeoTreeFloatTitle           = { fg = c.teal_300, bg = c.slate_800, bold = true },
      NeoTreeFloatNormal          = { fg = c.slate_200, bg = c.slate_800 },
    })
  end

  -- telescope.nvim
  if p.telescope ~= false then
    add({
      TelescopeBorder         = { fg = c.slate_700 },
      TelescopeNormal         = { fg = c.slate_200, bg = c.slate_800 },
      TelescopeSelection      = { fg = c.teal_300, bg = c.slate_700, bold = true },
      TelescopeSelectionCaret = { fg = c.teal_300, bg = c.slate_700 },
      TelescopeMultiSelection = { fg = c.teal_200 },
      TelescopeMultiIcon      = { fg = c.teal_300 },
      TelescopeMatching       = { fg = c.teal_300, bold = true },
      TelescopePromptPrefix   = { fg = c.teal_300 },
      TelescopePromptCounter  = { fg = c.slate_500 },
      TelescopePromptNormal   = { fg = c.slate_200, bg = c.slate_800 },
      TelescopePromptBorder   = { fg = c.teal_300, bg = c.slate_800 },
      TelescopePromptTitle    = { fg = c.slate_900, bg = c.teal_300, bold = true },
      TelescopeResultsNormal  = { fg = c.slate_200, bg = c.slate_chrome },
      TelescopeResultsBorder  = { fg = c.slate_chrome, bg = c.slate_chrome },
      TelescopeResultsTitle   = { fg = c.slate_chrome, bg = c.slate_chrome },
      TelescopePreviewNormal  = { fg = c.slate_200, bg = c.slate_editor },
      TelescopePreviewBorder  = { fg = c.slate_800,  bg = c.slate_editor },
      TelescopePreviewTitle   = { fg = c.slate_900,  bg = c.teal_200, bold = true },
    })
  end

  -- nvim-cmp
  if p.cmp ~= false then
    add({
      CmpItemAbbr              = { fg = c.slate_200 },
      CmpItemAbbrDeprecated    = { fg = c.slate_500, strikethrough = true },
      CmpItemAbbrMatch         = { fg = c.teal_300, bold = true },
      CmpItemAbbrMatchFuzzy    = { fg = c.teal_300 },
      CmpItemMenu              = { fg = c.slate_500, italic = true },
      CmpItemKind              = { fg = c.sky_300 },
      CmpItemKindDefault       = { fg = c.slate_400 },

      CmpItemKindFunction      = { fg = c.sky_300 },
      CmpItemKindMethod        = { fg = c.sky_300 },
      CmpItemKindConstructor   = { fg = c.teal_200 },
      CmpItemKindClass         = { fg = c.teal_200 },
      CmpItemKindInterface     = { fg = c.teal_200 },
      CmpItemKindEnum          = { fg = c.teal_200 },
      CmpItemKindStruct        = { fg = c.teal_200 },
      CmpItemKindEvent         = { fg = c.teal_200 },
      CmpItemKindModule        = { fg = c.teal_300 },
      CmpItemKindNamespace     = { fg = c.teal_300 },
      CmpItemKindTypeParameter = { fg = c.teal_200 },

      CmpItemKindKeyword       = { fg = c.sky_400 },
      CmpItemKindOperator      = { fg = c.slate_400 },
      CmpItemKindSnippet       = { fg = c.amber_400 },
      CmpItemKindText          = { fg = c.slate_200 },
      CmpItemKindColor         = { fg = c.purple },
      CmpItemKindFile          = { fg = c.sky_300 },
      CmpItemKindFolder        = { fg = c.teal_300 },
      CmpItemKindUnit          = { fg = c.slate_400 },
      CmpItemKindReference     = { fg = c.purple },

      CmpItemKindConstant      = { fg = c.rose_400 },
      CmpItemKindValue         = { fg = c.rose_400 },
      CmpItemKindEnumMember    = { fg = c.rose_400 },
      CmpItemKindVariable      = { fg = c.slate_200 },
      CmpItemKindField         = { fg = c.slate_300 },
      CmpItemKindProperty      = { fg = c.slate_300 },
    })
  end

  -- blink.cmp
  if p.blink ~= false then
    add({
      BlinkCmpMenu             = { link = 'Pmenu' },
      BlinkCmpMenuBorder       = { link = 'FloatBorder' },
      BlinkCmpMenuSelection    = { link = 'PmenuSel' },
      BlinkCmpScrollBarGutter  = { bg = c.slate_800 },
      BlinkCmpScrollBarThumb   = { bg = c.slate_600 },
      BlinkCmpLabel            = { fg = c.slate_200 },
      BlinkCmpLabelDeprecated  = { fg = c.slate_500, strikethrough = true },
      BlinkCmpLabelMatch       = { fg = c.teal_300, bold = true },
      BlinkCmpLabelDescription = { fg = c.slate_500 },
      BlinkCmpLabelDetail      = { fg = c.slate_500 },
      BlinkCmpKind             = { fg = c.sky_300 },
      BlinkCmpKindFunction     = { fg = c.sky_300 },
      BlinkCmpKindMethod       = { fg = c.sky_300 },
      BlinkCmpKindClass        = { fg = c.teal_200 },
      BlinkCmpKindInterface    = { fg = c.teal_200 },
      BlinkCmpKindKeyword      = { fg = c.sky_400 },
      BlinkCmpKindSnippet      = { fg = c.amber_400 },
      BlinkCmpKindConstant     = { fg = c.rose_400 },
      BlinkCmpKindVariable     = { fg = c.slate_200 },
      BlinkCmpKindProperty     = { fg = c.slate_300 },
      BlinkCmpKindModule       = { fg = c.teal_300 },
      BlinkCmpSource           = { fg = c.slate_500, italic = true },
      BlinkCmpDoc              = { link = 'NormalFloat' },
      BlinkCmpDocBorder        = { link = 'FloatBorder' },
      BlinkCmpDocSeparator     = { fg = c.slate_700 },
      BlinkCmpSignatureHelp    = { link = 'NormalFloat' },
      BlinkCmpSignatureHelpBorder = { link = 'FloatBorder' },
      BlinkCmpSignatureHelpActiveParameter = { fg = c.teal_300, bold = true },
    })
  end

  -- which-key.nvim
  if p.which_key ~= false then
    add({
      WhichKey           = { fg = c.teal_300, bold = true },
      WhichKeyGroup      = { fg = c.sky_400 },
      WhichKeyDesc       = { fg = c.slate_200 },
      WhichKeySeparator  = { fg = c.slate_500 },
      WhichKeyFloat      = { bg = c.slate_800 },
      WhichKeyBorder     = { fg = c.slate_700, bg = c.slate_800 },
      WhichKeyValue      = { fg = c.slate_400 },
      WhichKeyNormal     = { bg = c.slate_800 },
      WhichKeyIcon       = { fg = c.teal_300 },
      WhichKeyTitle      = { fg = c.teal_300, bold = true },
      WhichKeyIconAzure  = { fg = c.sky_400 },
      WhichKeyIconBlue   = { fg = c.sky_400 },
      WhichKeyIconCyan   = { fg = c.teal_300 },
      WhichKeyIconGreen  = { fg = c.teal_300 },
      WhichKeyIconGrey   = { fg = c.slate_400 },
      WhichKeyIconOrange = { fg = c.orange_red },
      WhichKeyIconPurple = { fg = c.purple },
      WhichKeyIconRed    = { fg = c.rose_400 },
      WhichKeyIconYellow = { fg = c.amber_400 },
    })
  end

  -- indent-blankline.nvim (v3 + v2 names)
  if p.indent_blankline ~= false then
    add({
      IblIndent                   = { fg = c.slate_guide },
      IblWhitespace               = { fg = c.slate_guide },
      IblScope                    = { fg = c.teal_guide_active },
      IndentBlanklineChar         = { fg = c.slate_guide },
      IndentBlanklineContextChar  = { fg = c.teal_guide_active },
      IndentBlanklineSpaceChar    = { fg = c.slate_guide },
      IndentBlanklineContextStart = { sp = c.teal_guide_active, underline = true },
    })
  end

  -- bufferline.nvim
  if p.bufferline ~= false then
    add({
      BufferLineFill                = { fg = c.slate_400, bg = c.slate_chrome },
      BufferLineBackground          = { fg = c.slate_400, bg = c.slate_chrome },
      BufferLineBufferSelected      = { fg = c.teal_300, bg = c.slate_editor, bold = true, italic = false },
      BufferLineBufferVisible       = { fg = c.slate_300, bg = c.slate_chrome },
      BufferLineCloseButton         = { fg = c.slate_500, bg = c.slate_chrome },
      BufferLineCloseButtonSelected = { fg = c.rose_400, bg = c.slate_editor },
      BufferLineCloseButtonVisible  = { fg = c.slate_400, bg = c.slate_chrome },
      BufferLineIndicatorSelected   = { fg = c.teal_300, bg = c.slate_editor },
      BufferLineModified            = { fg = c.rose_400, bg = c.slate_chrome },
      BufferLineModifiedSelected    = { fg = c.rose_400, bg = c.slate_editor },
      BufferLineModifiedVisible     = { fg = c.rose_400, bg = c.slate_chrome },
      BufferLineSeparator           = { fg = c.slate_800, bg = c.slate_chrome },
      BufferLineSeparatorSelected   = { fg = c.slate_800, bg = c.slate_editor },
      BufferLineSeparatorVisible    = { fg = c.slate_800, bg = c.slate_chrome },
      BufferLineTab                 = { fg = c.slate_400, bg = c.slate_chrome },
      BufferLineTabSelected         = { fg = c.teal_300, bg = c.slate_editor, bold = true },
      BufferLineTabClose            = { fg = c.rose_400, bg = c.slate_chrome },
      BufferLineDiagnostic          = { fg = c.slate_500, bg = c.slate_chrome },
      BufferLineDiagnosticSelected  = { fg = c.slate_300, bg = c.slate_editor, bold = true },
      BufferLineDiagnosticVisible   = { fg = c.slate_400, bg = c.slate_chrome },
      BufferLineError               = { fg = c.rose_400, bg = c.slate_chrome },
      BufferLineErrorSelected       = { fg = c.rose_400, bg = c.slate_editor, bold = true },
      BufferLineErrorVisible        = { fg = c.rose_400, bg = c.slate_chrome },
      BufferLineWarning             = { fg = c.amber_400, bg = c.slate_chrome },
      BufferLineWarningSelected     = { fg = c.amber_400, bg = c.slate_editor, bold = true },
      BufferLineWarningVisible      = { fg = c.amber_400, bg = c.slate_chrome },
      BufferLineInfo                = { fg = c.sky_400, bg = c.slate_chrome },
      BufferLineInfoSelected        = { fg = c.sky_400, bg = c.slate_editor, bold = true },
      BufferLineInfoVisible         = { fg = c.sky_400, bg = c.slate_chrome },
      BufferLineHint                = { fg = c.teal_300, bg = c.slate_chrome },
      BufferLineHintSelected        = { fg = c.teal_300, bg = c.slate_editor, bold = true },
      BufferLineHintVisible         = { fg = c.teal_300, bg = c.slate_chrome },
    })
  end

  -- noice.nvim
  if p.noice ~= false then
    add({
      NoiceCmdline                  = { fg = c.slate_200, bg = c.slate_800 },
      NoiceCmdlineIcon              = { fg = c.teal_300 },
      NoiceCmdlineIconSearch        = { fg = c.amber_400 },
      NoiceCmdlinePopup             = { fg = c.slate_200, bg = c.slate_800 },
      NoiceCmdlinePopupBorder       = { fg = c.teal_300, bg = c.slate_800 },
      NoiceCmdlinePopupBorderSearch = { fg = c.amber_400, bg = c.slate_800 },
      NoiceCmdlinePopupTitle        = { fg = c.teal_300, bg = c.slate_800, bold = true },
      NoiceMini                     = { fg = c.slate_200, bg = c.slate_800 },
      NoicePopup                    = { fg = c.slate_200, bg = c.slate_800 },
      NoicePopupBorder              = { fg = c.slate_700, bg = c.slate_800 },
      NoicePopupmenu                = { link = 'Pmenu' },
      NoicePopupmenuSelected        = { link = 'PmenuSel' },
      NoicePopupmenuMatch           = { fg = c.teal_300, bold = true },
      NoiceConfirm                  = { fg = c.slate_200, bg = c.slate_800 },
      NoiceConfirmBorder            = { fg = c.teal_300, bg = c.slate_800 },
      NoiceLspProgressTitle         = { fg = c.teal_300 },
      NoiceLspProgressClient        = { fg = c.sky_400 },
      NoiceLspProgressSpinner       = { fg = c.teal_300 },
      NoiceCompletionItemKindDefault = { fg = c.slate_400 },
    })
  end

  -- nvim-notify
  if p.notify ~= false then
    add({
      NotifyERRORBorder = { fg = c.rose_400 },
      NotifyWARNBorder  = { fg = c.amber_400 },
      NotifyINFOBorder  = { fg = c.sky_400 },
      NotifyDEBUGBorder = { fg = c.slate_500 },
      NotifyTRACEBorder = { fg = c.purple },
      NotifyERRORIcon   = { fg = c.rose_400 },
      NotifyWARNIcon    = { fg = c.amber_400 },
      NotifyINFOIcon    = { fg = c.sky_400 },
      NotifyDEBUGIcon   = { fg = c.slate_500 },
      NotifyTRACEIcon   = { fg = c.purple },
      NotifyERRORTitle  = { fg = c.rose_400, bold = true },
      NotifyWARNTitle   = { fg = c.amber_400, bold = true },
      NotifyINFOTitle   = { fg = c.sky_400, bold = true },
      NotifyDEBUGTitle  = { fg = c.slate_500, bold = true },
      NotifyTRACETitle  = { fg = c.purple, bold = true },
      NotifyBackground  = { bg = c.slate_800 },
    })
  end

  -- trouble.nvim
  if p.trouble ~= false then
    add({
      TroubleNormal           = { fg = c.slate_200, bg = tree_bg },
      TroubleNormalNC         = { fg = c.slate_200, bg = tree_bg },
      TroubleText             = { fg = c.slate_200 },
      TroubleCount            = { fg = c.teal_300, bold = true },
      TroubleSignError        = { fg = c.rose_400 },
      TroubleSignWarning      = { fg = c.amber_400 },
      TroubleSignInformation  = { fg = c.sky_400 },
      TroubleSignHint         = { fg = c.teal_300 },
      TroubleSignOther        = { fg = c.purple },
      TroubleSource           = { fg = c.slate_500 },
      TroubleCode             = { fg = c.slate_500 },
      TroubleLocation         = { fg = c.slate_500 },
      TroubleFile             = { fg = c.teal_300, bold = true },
      TroublePos              = { fg = c.slate_500 },
      TroubleFoldIcon         = { fg = c.slate_400 },
      TroubleIndent           = { fg = c.slate_guide },
      TroubleIndentLast       = { fg = c.slate_guide },
      TroubleIndentFoldClosed = { fg = c.slate_400 },
      TroubleIndentTop        = { fg = c.slate_guide },
      TroubleIndentMiddle     = { fg = c.slate_guide },
      TroubleIndentWs         = { fg = c.slate_guide },
      TroubleBasename         = { fg = c.slate_200 },
      TroubleDirectory        = { fg = c.slate_500 },
      TroubleFilename         = { fg = c.teal_300 },
      TroublePreview          = { link = 'Visual' },
    })
  end

  -- lazy.nvim
  if p.lazy ~= false then
    add({
      LazyNormal        = { fg = c.slate_200, bg = c.slate_800 },
      LazyButton        = { fg = c.slate_300, bg = c.slate_800 },
      LazyButtonActive  = { fg = c.slate_900, bg = c.teal_300, bold = true },
      LazyH1            = { fg = c.teal_300, bold = true },
      LazyH2            = { fg = c.sky_400, bold = true },
      LazyProp          = { fg = c.slate_500 },
      LazyValue         = { fg = c.slate_200 },
      LazyDir           = { fg = c.teal_300 },
      LazyUrl           = { fg = c.sky_400, underline = true },
      LazyCommit        = { fg = c.rose_400 },
      LazyCommitIssue   = { fg = c.amber_400 },
      LazyCommitScope   = { fg = c.purple, italic = true },
      LazyCommitType    = { fg = c.sky_400, bold = true },
      LazyReasonCmd     = { fg = c.sky_400 },
      LazyReasonEvent   = { fg = c.teal_300 },
      LazyReasonFt      = { fg = c.purple },
      LazyReasonImport  = { fg = c.slate_400 },
      LazyReasonKeys    = { fg = c.amber_400 },
      LazyReasonPlugin  = { fg = c.teal_300 },
      LazyReasonRuntime = { fg = c.rose_400 },
      LazyReasonSource  = { fg = c.sky_400 },
      LazyReasonStart   = { fg = c.teal_300 },
      LazySpecial       = { fg = c.teal_300 },
      LazyProgressDone  = { fg = c.teal_300, bold = true },
      LazyProgressTodo  = { fg = c.slate_600, bold = true },
      LazyLocal         = { fg = c.amber_400 },
      LazyTaskError     = { fg = c.rose_400, bold = true },
      LazyTaskOutput    = { fg = c.slate_400 },
      LazyNoCond        = { fg = c.amber_700 },
    })
  end

  -- mason.nvim
  if p.mason ~= false then
    add({
      MasonNormal                      = { bg = c.slate_800 },
      MasonHeader                      = { fg = c.slate_900, bg = c.teal_300, bold = true },
      MasonHeaderSecondary             = { fg = c.slate_900, bg = c.sky_400, bold = true },
      MasonHighlight                   = { fg = c.teal_300 },
      MasonHighlightBlock              = { fg = c.slate_900, bg = c.teal_300 },
      MasonHighlightBlockBold          = { fg = c.slate_900, bg = c.teal_300, bold = true },
      MasonHighlightBlockSecondary     = { fg = c.slate_900, bg = c.sky_400 },
      MasonHighlightBlockBoldSecondary = { fg = c.slate_900, bg = c.sky_400, bold = true },
      MasonMuted                       = { fg = c.slate_500 },
      MasonMutedBlock                  = { fg = c.slate_400, bg = c.slate_800 },
      MasonMutedBlockBold              = { fg = c.slate_400, bg = c.slate_800, bold = true },
      MasonLink                        = { fg = c.sky_400, underline = true },
      MasonError                       = { fg = c.rose_400 },
      MasonWarning                     = { fg = c.amber_400 },
      MasonHeading                     = { bold = true },
    })
  end

  -- fidget.nvim
  if p.fidget ~= false then
    add({
      FidgetTitle = { fg = c.teal_300, bold = true },
      FidgetTask  = { fg = c.slate_400 },
    })
  end

  -- dashboard-nvim / alpha-nvim
  if p.dashboard ~= false then
    add({
      DashboardHeader           = { fg = c.teal_300, bold = true },
      DashboardCenter           = { fg = c.slate_200 },
      DashboardShortCut         = { fg = c.sky_400 },
      DashboardFooter           = { fg = c.slate_500, italic = true },
      DashboardKey              = { fg = c.amber_400 },
      DashboardDesc             = { fg = c.slate_200 },
      DashboardIcon             = { fg = c.teal_300 },
      DashboardProjectTitle     = { fg = c.teal_300, bold = true },
      DashboardProjectTitleIcon = { fg = c.teal_300 },
      DashboardProjectIcon      = { fg = c.sky_400 },
      DashboardMruTitle         = { fg = c.teal_300, bold = true },
      DashboardMruIcon          = { fg = c.sky_400 },
      DashboardFiles            = { fg = c.slate_200 },

      AlphaHeader   = { fg = c.teal_300, bold = true },
      AlphaButtons  = { fg = c.slate_200 },
      AlphaShortcut = { fg = c.amber_400 },
      AlphaFooter   = { fg = c.slate_500, italic = true },
    })
  end

  -- mini.nvim
  if p.mini ~= false then
    add({
      MiniStatuslineModeNormal   = { fg = c.slate_900, bg = c.teal_300,  bold = true },
      MiniStatuslineModeInsert   = { fg = c.slate_900, bg = c.sky_400,   bold = true },
      MiniStatuslineModeVisual   = { fg = c.slate_900, bg = c.purple,    bold = true },
      MiniStatuslineModeReplace  = { fg = c.slate_900, bg = c.rose_400,  bold = true },
      MiniStatuslineModeCommand  = { fg = c.slate_900, bg = c.amber_400, bold = true },
      MiniStatuslineModeOther    = { fg = c.slate_900, bg = c.teal_200,  bold = true },
      MiniStatuslineDevinfo      = { fg = c.slate_300, bg = c.slate_800 },
      MiniStatuslineFileinfo     = { fg = c.slate_300, bg = c.slate_800 },
      MiniStatuslineFilename     = { fg = c.slate_400, bg = c.slate_chrome },
      MiniStatuslineInactive     = { fg = c.slate_500, bg = c.slate_chrome },

      MiniTablineCurrent         = { fg = c.teal_300, bg = c.slate_editor, bold = true },
      MiniTablineVisible         = { fg = c.slate_300, bg = c.slate_chrome },
      MiniTablineHidden          = { fg = c.slate_400, bg = c.slate_chrome },
      MiniTablineFill            = { bg = c.slate_chrome },
      MiniTablineModifiedCurrent = { fg = c.rose_400, bg = c.slate_editor, bold = true },
      MiniTablineModifiedVisible = { fg = c.rose_400, bg = c.slate_chrome },
      MiniTablineModifiedHidden  = { fg = c.rose_400, bg = c.slate_chrome },
      MiniTablineTabpagesection  = { fg = c.slate_900, bg = c.teal_300, bold = true },

      MiniCursorword             = { underline = true },
      MiniCursorwordCurrent      = { underline = true },

      MiniHipatternsFixme        = { fg = c.slate_900, bg = c.rose_400,  bold = true },
      MiniHipatternsHack         = { fg = c.slate_900, bg = c.amber_400, bold = true },
      MiniHipatternsTodo         = { fg = c.slate_900, bg = c.sky_400,   bold = true },
      MiniHipatternsNote         = { fg = c.slate_900, bg = c.teal_300,  bold = true },

      MiniDiffSignAdd            = { fg = c.teal_300 },
      MiniDiffSignChange         = { fg = c.rose_400 },
      MiniDiffSignDelete         = { fg = c.red_500 },
      MiniDiffOverAdd            = { bg = c.diff_add_bg },
      MiniDiffOverChange         = { bg = c.diff_change_bg },
      MiniDiffOverDelete         = { bg = c.diff_delete_bg },
      MiniDiffOverContext        = { bg = c.slate_800 },

      MiniFilesNormal            = { fg = c.slate_300, bg = c.slate_chrome },
      MiniFilesTitle             = { fg = c.slate_300, bg = c.slate_800 },
      MiniFilesTitleFocused      = { fg = c.teal_300, bg = c.slate_800, bold = true },
      MiniFilesBorder            = { fg = c.slate_700, bg = c.slate_chrome },
      MiniFilesBorderModified    = { fg = c.amber_400, bg = c.slate_chrome },
      MiniFilesCursorLine        = { bg = c.slate_700 },
      MiniFilesDirectory         = { fg = c.teal_300 },
      MiniFilesFile              = { fg = c.slate_200 },

      MiniPickNormal             = { link = 'NormalFloat' },
      MiniPickBorder             = { link = 'FloatBorder' },
      MiniPickBorderText         = { fg = c.teal_300, bold = true },
      MiniPickMatchCurrent       = { link = 'PmenuSel' },
      MiniPickMatchMarked        = { fg = c.amber_400 },
      MiniPickMatchRanges        = { fg = c.teal_300, bold = true },
      MiniPickHeader             = { fg = c.teal_300, bold = true },
      MiniPickIconDirectory      = { fg = c.teal_300 },
      MiniPickIconFile           = { fg = c.slate_400 },
      MiniPickPrompt             = { fg = c.teal_300, bold = true },
    })
  end

  return hl
end

return M
