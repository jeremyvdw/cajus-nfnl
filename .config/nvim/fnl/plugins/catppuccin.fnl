[{1 :catppuccin/nvim
  :lazy false
  :priority 1000
  :dependencies []
  :config (fn []
            (let [theme (require :catppuccin)]
              (theme.setup {:flavour :mocha})
              (vim.cmd "colorscheme catppuccin")))}
 {1 :nvim-tree/nvim-web-devicons
  :lazy false}]
