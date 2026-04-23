-- Lualine theme. Uses the shared Slatewave palette so mode colors
-- align with the rest of the UI chrome.

local c = require('slatewave.palette').colors

return {
  normal = {
    a = { fg = c.slate_900, bg = c.teal_300, gui = 'bold' },
    b = { fg = c.teal_300, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  insert = {
    a = { fg = c.slate_900, bg = c.sky_400, gui = 'bold' },
    b = { fg = c.sky_300, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  visual = {
    a = { fg = c.slate_900, bg = c.purple, gui = 'bold' },
    b = { fg = c.purple_light, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  replace = {
    a = { fg = c.slate_900, bg = c.rose_400, gui = 'bold' },
    b = { fg = c.rose_400, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  command = {
    a = { fg = c.slate_900, bg = c.amber_400, gui = 'bold' },
    b = { fg = c.amber_400, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  terminal = {
    a = { fg = c.slate_900, bg = c.teal_200, gui = 'bold' },
    b = { fg = c.teal_200, bg = c.slate_800 },
    c = { fg = c.slate_300, bg = c.slate_chrome },
  },
  inactive = {
    a = { fg = c.slate_500, bg = c.slate_chrome, gui = 'bold' },
    b = { fg = c.slate_500, bg = c.slate_chrome },
    c = { fg = c.slate_500, bg = c.slate_chrome },
  },
}
