-- Slatewave palette.
-- Raw hexes mirror vscode-slatewave/themes/slatewave-color-theme.json.
-- When that palette changes, update the values below to match.

local M = {}

M.colors = {
  none = 'NONE',

  -- slate foundation
  slate_950    = '#020617',
  slate_900    = '#0f172a',
  slate_800    = '#1e293b',
  slate_700    = '#334155',
  slate_600    = '#475569',
  slate_500    = '#64748b',
  slate_400    = '#94a3b8',
  slate_300    = '#cbd5e1',
  slate_200    = '#e2e8f0',
  slate_100    = '#f1f5f9',
  slate_chrome = '#21252b', -- sidebar / tab strip / status chrome
  slate_editor = '#282c34', -- editor surface
  slate_guide  = '#3a3f4c', -- indent guide

  -- teal signature
  teal_700           = '#0f766e',
  teal_400           = '#2dd4bf',
  teal_300           = '#5eead4', -- primary accent
  teal_200           = '#99f6e4',
  teal_guide_active  = '#3d9e94',
  cyan_50            = '#ecfeff',

  -- accents
  sky_400      = '#38bdf8',
  sky_300      = '#7dd3fc',
  cyan_300     = '#67e8f9',
  cyan_700     = '#0e7490',
  cyan_info_bg = '#164e63',
  purple       = '#B388FF',
  purple_light = '#c4b5fd',
  rose_400     = '#fb7185',
  red_500      = '#ef5350',
  red_error_bg = '#7f1d1d',
  orange_red   = '#ff4500',
  amber_400    = '#fbbf24',
  amber_700    = '#b45309',
  amber_warn_bg = '#78350f',

  -- diff tints (pre-blended against slate_editor so they render in TUI)
  diff_add_bg    = '#1e3a3a',
  diff_change_bg = '#2a3344',
  diff_delete_bg = '#3a1f2d',
  diff_text_bg   = '#2f5c6b',
}

return M
