-- [nfnl] fnl/plugins/treesitter.fnl
local function _1_()
  local treesitter = require("nvim-treesitter")
  treesitter.setup()
  return treesitter.install({"bash", "clojure", "commonlisp", "dockerfile", "fennel", "gleam", "html", "janet_simple", "java", "javascript", "json", "lua", "markdown", "python", "racket", "ruby", "yaml"})
end
return {{"nvim-treesitter/nvim-treesitter", branch = "main", build = ":TSUpdate", auto_install = true, indent = {enable = true}, highlight = {enable = true}, config = _1_, lazy = false}}
