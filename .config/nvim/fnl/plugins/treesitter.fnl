[{1 :nvim-treesitter/nvim-treesitter
  :branch "main"
  :lazy false
  :build ":TSUpdate"
  :auto_install true
  :indent {:enable true}
  :highlight {:enable true}
  :config (fn []
            (let [treesitter (require :nvim-treesitter)]
              (treesitter.setup)
              (treesitter.install [:bash
                                   :clojure
                                   :commonlisp
                                   :dockerfile
                                   :fennel
                                   :gleam
                                   :html
                                   :janet_simple
                                   :java
                                   :javascript
                                   :json
                                   :lua
                                   :markdown
                                   :python
                                   :racket
                                   :ruby
                                   :yaml])))}]
