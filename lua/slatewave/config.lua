-- Slatewave user configuration.

local M = {}

M.defaults = {
  transparent = false,
  italic_comments = true,
  italic_keywords = true, -- storage (const/let/fn), modifiers, self/this/super
  dim_inactive = false,
  terminal_colors = true,

  -- per-plugin toggle. Set to false to skip that plugin's highlights.
  plugins = {
    cmp = true,
    blink = true,
    gitsigns = true,
    telescope = true,
    neo_tree = true,
    nvim_tree = true,
    which_key = true,
    indent_blankline = true,
    bufferline = true,
    dashboard = true,
    noice = true,
    notify = true,
    mini = true,
    trouble = true,
    lazy = true,
    mason = true,
    fidget = true,
  },

  -- Escape hatch: function(highlights, colors) for arbitrary overrides.
  -- `highlights` is a table of { GroupName = { fg = ..., bg = ..., bold = ... } }
  -- edited in place before it's applied.
  on_highlights = nil,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend('force', vim.deepcopy(M.defaults), opts or {})
end

return M
