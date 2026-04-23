-- TreeSitter (@*) and LSP semantic (@lsp.*) highlight groups.
-- Mirrors the scope → color mapping in vscode-slatewave so the same
-- code lights up the same way in both editors.

local M = {}

function M.get(c, opts)
  local italic_comments = opts.italic_comments and true or nil
  local italic_kw       = opts.italic_keywords and true or nil

  local storage     = { fg = c.purple,   italic = italic_kw }
  local special_var = { fg = c.purple,   italic = italic_kw }
  local param       = { fg = c.slate_300, italic = true } -- always italic, per VSCode
  local decorator   = { fg = c.amber_400, italic = italic_kw }

  return {
    -- Identifiers
    ['@variable']              = { fg = c.slate_200 },
    ['@variable.builtin']      = special_var, -- this / self / super
    ['@variable.parameter']    = param,
    ['@variable.parameter.builtin'] = param,
    ['@variable.member']       = { fg = c.slate_300 }, -- struct field / property

    ['@constant']              = { fg = c.rose_400 },
    ['@constant.builtin']      = { fg = c.rose_400 },
    ['@constant.macro']        = { fg = c.amber_400 },

    ['@module']                = { fg = c.teal_300 },
    ['@module.builtin']        = { fg = c.teal_300 },
    ['@label']                 = { fg = c.sky_400 },

    -- Literals
    ['@string']                = { fg = c.teal_300 },
    ['@string.regexp']         = { fg = c.rose_400 },
    ['@string.escape']         = { fg = c.amber_400 },
    ['@string.special']        = { fg = c.amber_400 },
    ['@string.special.path']   = { fg = c.sky_400, underline = true },
    ['@string.special.symbol'] = { fg = c.purple },
    ['@string.special.url']    = { fg = c.sky_400, underline = true },
    ['@string.documentation']  = { fg = c.slate_500, italic = italic_comments },

    ['@character']             = { fg = c.teal_300 },
    ['@character.special']     = { fg = c.amber_400 },

    ['@boolean']               = { fg = c.rose_400 },
    ['@number']                = { fg = c.rose_400 },
    ['@number.float']          = { fg = c.rose_400 },

    -- Types
    ['@type']                  = { fg = c.teal_200 },
    ['@type.builtin']          = { fg = c.sky_400 },
    ['@type.definition']       = { fg = c.teal_200 },
    ['@type.qualifier']        = storage,

    ['@attribute']             = decorator,
    ['@attribute.builtin']     = decorator,
    ['@property']              = { fg = c.slate_300 },

    -- Functions
    ['@function']              = { fg = c.sky_300 },
    ['@function.builtin']      = { fg = c.sky_400 },
    ['@function.call']         = { fg = c.sky_300 },
    ['@function.macro']        = { fg = c.amber_400 },
    ['@function.method']       = { fg = c.sky_300 },
    ['@function.method.call']  = { fg = c.sky_300 },
    ['@constructor']           = { fg = c.teal_200 },
    ['@operator']              = { fg = c.slate_400 },

    -- Keywords
    ['@keyword']                     = { fg = c.sky_400 },
    ['@keyword.coroutine']           = { fg = c.sky_400 },
    ['@keyword.function']            = storage, -- `function` / `def` / `fn`
    ['@keyword.operator']            = { fg = c.sky_400 },
    ['@keyword.import']              = { fg = c.sky_400 },
    ['@keyword.type']                = storage,
    ['@keyword.modifier']            = storage, -- async / static / etc.
    ['@keyword.repeat']              = { fg = c.sky_400 },
    ['@keyword.return']              = { fg = c.sky_400 },
    ['@keyword.debug']               = { fg = c.amber_400 },
    ['@keyword.exception']           = { fg = c.sky_400 },
    ['@keyword.conditional']         = { fg = c.sky_400 },
    ['@keyword.conditional.ternary'] = { fg = c.sky_400 },
    ['@keyword.directive']           = { fg = c.purple },
    ['@keyword.directive.define']    = { fg = c.purple },
    ['@keyword.export']              = { fg = c.sky_400 },

    -- Punctuation
    ['@punctuation.delimiter'] = { fg = c.slate_400 },
    ['@punctuation.bracket']   = { fg = c.slate_400 },
    ['@punctuation.special']   = { fg = c.purple }, -- ${ } in template strings

    -- Comments
    ['@comment']                = { fg = c.slate_500, italic = italic_comments },
    ['@comment.documentation']  = { fg = c.slate_500, italic = italic_comments },
    ['@comment.error']          = { fg = c.rose_400,  italic = italic_comments },
    ['@comment.warning']        = { fg = c.amber_400, italic = italic_comments },
    ['@comment.hint']           = { fg = c.teal_300,  italic = italic_comments },
    ['@comment.info']           = { fg = c.sky_400,   italic = italic_comments },
    ['@comment.note']           = { fg = c.teal_300,  italic = italic_comments },
    ['@comment.todo']           = { fg = c.slate_900, bg = c.amber_400, bold = true },

    -- Markup (markdown/rst/adoc)
    ['@markup.strong']         = { fg = c.sky_400, bold = true },
    ['@markup.italic']         = { fg = c.purple, italic = true },
    ['@markup.strikethrough']  = { fg = c.slate_500, strikethrough = true },
    ['@markup.underline']      = { fg = c.sky_400, underline = true },

    ['@markup.heading']        = { fg = c.teal_300, bold = true },
    ['@markup.heading.1']      = { fg = c.teal_300,  bold = true },
    ['@markup.heading.2']      = { fg = c.sky_400,   bold = true },
    ['@markup.heading.3']      = { fg = c.purple,    bold = true },
    ['@markup.heading.4']      = { fg = c.teal_200,  bold = true },
    ['@markup.heading.5']      = { fg = c.sky_300,   bold = true },
    ['@markup.heading.6']      = { fg = c.slate_300, bold = true },

    ['@markup.quote']          = { fg = c.slate_400, italic = true },
    ['@markup.math']           = { fg = c.teal_200 },

    ['@markup.link']           = { fg = c.sky_400 },
    ['@markup.link.label']     = { fg = c.teal_300 },
    ['@markup.link.url']       = { fg = c.sky_400, underline = true },

    ['@markup.raw']            = { fg = c.teal_200 },
    ['@markup.raw.block']      = { fg = c.teal_200 },
    ['@markup.raw.delimiter']  = { fg = c.slate_500 },

    ['@markup.list']           = { fg = c.rose_400 },
    ['@markup.list.checked']   = { fg = c.teal_300 },
    ['@markup.list.unchecked'] = { fg = c.slate_500 },

    -- Diff (inside diff/patch buffers)
    ['@diff.plus']             = { fg = c.teal_300 },
    ['@diff.minus']            = { fg = c.rose_400 },
    ['@diff.delta']            = { fg = c.amber_400 },

    -- Tags (HTML / JSX / XML)
    ['@tag']                   = { fg = c.sky_400 },
    ['@tag.builtin']           = { fg = c.sky_400 },
    ['@tag.attribute']         = { fg = c.purple, italic = italic_kw },
    ['@tag.delimiter']         = { fg = c.slate_500 },

    -- Legacy captures (still emitted by some parsers)
    ['@namespace']             = { fg = c.teal_300 },
    ['@field']                 = { fg = c.slate_300 },
    ['@parameter']             = param,
    ['@text']                  = { fg = c.slate_200 },
    ['@text.strong']           = { fg = c.sky_400, bold = true },
    ['@text.emphasis']         = { fg = c.purple, italic = true },
    ['@text.underline']        = { fg = c.sky_400, underline = true },
    ['@text.strike']           = { fg = c.slate_500, strikethrough = true },
    ['@text.title']            = { fg = c.teal_300, bold = true },
    ['@text.literal']          = { fg = c.teal_200 },
    ['@text.uri']              = { fg = c.sky_400, underline = true },
    ['@text.reference']        = { fg = c.teal_300 },
    ['@text.note']             = { fg = c.teal_300, bold = true },
    ['@text.warning']          = { fg = c.amber_400, bold = true },
    ['@text.danger']           = { fg = c.rose_400, bold = true },
    ['@text.todo']             = { fg = c.slate_900, bg = c.amber_400, bold = true },
    ['@text.diff.add']         = { fg = c.teal_300 },
    ['@text.diff.delete']      = { fg = c.rose_400 },

    -- === LSP semantic tokens ===
    ['@lsp.type.namespace']      = { link = '@module' },
    ['@lsp.type.type']           = { link = '@type' },
    ['@lsp.type.class']          = { link = '@type' },
    ['@lsp.type.enum']           = { link = '@type' },
    ['@lsp.type.interface']      = { link = '@type' },
    ['@lsp.type.struct']         = { link = '@type' },
    ['@lsp.type.typeParameter']  = { link = '@type' },
    ['@lsp.type.parameter']      = { link = '@variable.parameter' },
    ['@lsp.type.variable']       = { link = '@variable' },
    ['@lsp.type.property']       = { link = '@property' },
    ['@lsp.type.enumMember']     = { fg = c.rose_400 },
    ['@lsp.type.event']          = { link = '@type' },
    ['@lsp.type.function']       = { link = '@function' },
    ['@lsp.type.method']         = { link = '@function.method' },
    ['@lsp.type.macro']          = { fg = c.amber_400 },
    ['@lsp.type.decorator']      = decorator,
    ['@lsp.type.keyword']        = { link = '@keyword' },
    ['@lsp.type.modifier']       = storage,
    ['@lsp.type.comment']        = { link = '@comment' },
    ['@lsp.type.string']         = { link = '@string' },
    ['@lsp.type.number']         = { link = '@number' },
    ['@lsp.type.regexp']         = { fg = c.rose_400 },
    ['@lsp.type.operator']       = { link = '@operator' },
    ['@lsp.type.selfKeyword']    = special_var,
    ['@lsp.type.builtinType']    = { fg = c.sky_400 },

    ['@lsp.typemod.variable.readonly']       = { fg = c.rose_400 },
    ['@lsp.typemod.variable.defaultLibrary'] = special_var,
    ['@lsp.typemod.function.defaultLibrary'] = { fg = c.sky_400 },
    ['@lsp.typemod.method.defaultLibrary']   = { fg = c.sky_400 },
    ['@lsp.typemod.enumMember.readonly']     = { fg = c.rose_400 },
    ['@lsp.typemod.keyword.async']           = storage,
    ['@lsp.typemod.keyword.readonly']        = storage,
    ['@lsp.typemod.operator.injected']       = { link = '@operator' },
    ['@lsp.typemod.string.injected']         = { link = '@string' },
    ['@lsp.typemod.variable.injected']       = { link = '@variable' },
    ['@lsp.mod.deprecated']                  = { strikethrough = true },
  }
end

return M
