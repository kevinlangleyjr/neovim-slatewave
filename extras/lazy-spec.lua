-- Slatewave for Neovim — lazy.nvim plugin spec.
--
-- The Slatewave CLI drops this file at ~/.config/nvim/lua/plugins/slatewave.lua,
-- which lazy.nvim auto-imports on next launch. Restart Neovim once after
-- install and the colorscheme is applied.
--
-- Tracks the README's lazy.nvim block — keep them in sync when bumping
-- options or the setup contract.

return {
  'kevinlangleyjr/neovim-slatewave',
  name = 'slatewave',
  priority = 1000,
  lazy = false,
  opts = {},
  config = function(_, opts)
    require('slatewave').setup(opts)
    vim.cmd.colorscheme('slatewave')
  end,
}
