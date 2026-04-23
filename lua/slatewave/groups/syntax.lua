-- Classic :syntax highlight groups.

local M = {}

function M.get(c, opts)
  local comment = { fg = c.slate_500 }
  if opts.italic_comments then comment.italic = true end

  local storage = { fg = c.purple }
  if opts.italic_keywords then storage.italic = true end

  return {
    Comment        = comment,

    Constant       = { fg = c.rose_400 },
    String         = { fg = c.teal_300 },
    Character      = { fg = c.teal_300 },
    Number         = { fg = c.rose_400 },
    Float          = { fg = c.rose_400 },
    Boolean        = { fg = c.rose_400 },

    Identifier     = { fg = c.slate_200 },
    Function       = { fg = c.sky_300 },

    Statement      = { fg = c.sky_400 },
    Conditional    = { fg = c.sky_400 },
    Repeat         = { fg = c.sky_400 },
    Label          = { fg = c.sky_400 },
    Operator       = { fg = c.slate_400 },
    Keyword        = { fg = c.sky_400 },
    Exception      = { fg = c.sky_400 },

    PreProc        = { fg = c.purple },
    Include        = { fg = c.sky_400 },
    Define         = { fg = c.purple },
    Macro          = { fg = c.amber_400 },
    PreCondit      = { fg = c.sky_400 },

    Type           = { fg = c.teal_200 },
    StorageClass   = storage,
    Structure      = { fg = c.teal_200 },
    Typedef        = { fg = c.teal_200 },

    Special        = { fg = c.amber_400 },
    SpecialChar    = { fg = c.amber_400 },
    Tag            = { fg = c.sky_400 },
    Delimiter      = { fg = c.slate_400 },
    SpecialComment = { fg = c.slate_400, italic = true },

    Underlined     = { fg = c.sky_400, underline = true },
    Ignore         = { fg = c.slate_500 },
    Error          = { fg = c.rose_400 },
  }
end

return M
