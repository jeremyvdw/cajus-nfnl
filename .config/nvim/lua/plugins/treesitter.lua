-- [nfnl] fnl/plugins/treesitter.fnl
local function _1_()
  local treesitter = require("nvim-treesitter.configs")
  return treesitter.setup({highlight = {enable = true}, indent = {enable = true}, auto_install = true, ensure_installed = {"bash", "clojure", "commonlisp", "dockerfile", "fennel", "gleam", "html", "janet_simple", "java", "javascript", "json", "lua", "markdown", "python", "racket", "ruby", "yaml"}})
end
return {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_}}
