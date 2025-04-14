-- [nfnl] Compiled from fnl/plugins/parinfer.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"eraserhd/parinfer-rust", event = "VeryLazy", build = "cargo build --release", cmd = "ParinferOn"}, {"kylechui/nvim-surround", event = "VeryLazy", config = _1_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}}}
