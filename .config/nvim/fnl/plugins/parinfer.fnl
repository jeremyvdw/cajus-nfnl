[{1 :eraserhd/parinfer-rust
  :event "VeryLazy"
  :build "cargo build --release"
  :cmd "ParinferOn"}

 {1 :kylechui/nvim-surround
  :event "VeryLazy"
  :config (fn []
            (let [surround (require :nvim-surround)]
              (surround.setup)))}

 {1 :windwp/nvim-autopairs
  :event "InsertEnter"
  :opts {}}]
