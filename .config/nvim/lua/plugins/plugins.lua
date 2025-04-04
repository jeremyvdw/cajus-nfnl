-- [nfnl] Compiled from fnl/plugins/plugins.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"bakpakin/fennel.vim", lazy = true, ft = {"fennel"}}, {"eraserhd/parinfer-rust", branch = "master", lazy = true, ft = {"clojure", "fennel", "commonlisp", "janet", "racket"}, build = "cargo build --release"}, {"kylechui/nvim-surround", lazy = true, event = "VeryLazy", ft = {"clojure", "fennel", "commonlisp", "janet", "racket"}, config = _1_}, {"guns/vim-sexp", lazy = true, ft = {"clojure", "fennel", "commonlisp", "janet", "racket"}}, {"tpope/vim-sexp-mappings-for-regular-people", lazy = true, ft = {"clojure", "fennel", "commonlisp", "janet", "racket"}}, {"windwp/nvim-autopairs", lazy = true, event = "InsertEnter", opts = {}}, {"tpope/vim-projectionist", lazy = true, ft = {"clojure", "fennel", "commonlisp", "janet", "racket"}}, {"tpope/vim-fugitive", lazy = true, ft = {"clojure", "commonlisp", "janet", "racket", "java", "python", "ruby"}}}
