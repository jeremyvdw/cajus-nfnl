[{1 :bakpakin/fennel.vim
  :lazy true
  :ft [:fennel]}

 {1 :eraserhd/parinfer-rust
  :branch "master"
  :lazy true
  :ft [:clojure :fennel :commonlisp :janet :racket]
  :build "cargo build --release"}

 {1 :kylechui/nvim-surround
  :lazy true
  :event "VeryLazy"
  :ft [:clojure :fennel :commonlisp :janet :racket]
  :config (fn []
            (let [surround (require :nvim-surround)]
              (surround.setup)))}

 {1 :guns/vim-sexp
  :lazy true
  :ft [:clojure :fennel :commonlisp :janet :racket]}

 {1 :tpope/vim-sexp-mappings-for-regular-people
  :lazy true
  :ft [:clojure :fennel :commonlisp :janet :racket]}

 {1 :windwp/nvim-autopairs
  :lazy true
  :event "InsertEnter"
  :opts {}}

 {1 :tpope/vim-projectionist
  :lazy true
  :ft [:clojure :fennel :commonlisp :janet :racket]}

 {1 :tpope/vim-fugitive
  :lazy true}]
