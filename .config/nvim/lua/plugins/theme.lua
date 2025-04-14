-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local theme = require("catppuccin")
  theme.setup({flavour = "mocha"})
  return vim.cmd("colorscheme catppuccin")
end
return {{"catppuccin/nvim", priority = 1000, config = _1_, lazy = false}}
