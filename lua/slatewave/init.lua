-- Slatewave for Neovim.
-- Slate below, teal above.

local M = {}

local config = require('slatewave.config')

function M.setup(opts)
  config.setup(opts)
end

local function set_terminal_colors(c)
  vim.g.terminal_color_0  = c.slate_800
  vim.g.terminal_color_1  = c.rose_400
  vim.g.terminal_color_2  = c.teal_300
  vim.g.terminal_color_3  = c.amber_700
  vim.g.terminal_color_4  = c.sky_400
  vim.g.terminal_color_5  = c.purple
  vim.g.terminal_color_6  = c.cyan_700
  vim.g.terminal_color_7  = c.slate_200
  vim.g.terminal_color_8  = c.slate_600
  vim.g.terminal_color_9  = c.red_500
  vim.g.terminal_color_10 = c.teal_200
  vim.g.terminal_color_11 = c.amber_400
  vim.g.terminal_color_12 = c.sky_300
  vim.g.terminal_color_13 = c.purple_light
  vim.g.terminal_color_14 = c.cyan_300
  vim.g.terminal_color_15 = c.slate_100
end

function M.load()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.o.background = 'dark'
  vim.g.colors_name = 'slatewave'

  local colors = require('slatewave.palette').colors
  local opts = config.options

  local highlights = {}
  local function merge(t)
    for k, v in pairs(t) do highlights[k] = v end
  end

  merge(require('slatewave.groups.editor').get(colors, opts))
  merge(require('slatewave.groups.syntax').get(colors, opts))
  merge(require('slatewave.groups.treesitter').get(colors, opts))
  merge(require('slatewave.groups.plugins').get(colors, opts))

  if type(opts.on_highlights) == 'function' then
    opts.on_highlights(highlights, colors)
  end

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  if opts.terminal_colors then
    set_terminal_colors(colors)
  end
end

-- Expose the palette so downstream users can reach into it without
-- re-requiring the submodule path.
M.colors = function()
  return require('slatewave.palette').colors
end

return M
