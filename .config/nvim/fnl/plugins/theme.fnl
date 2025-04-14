[{1 :catppuccin/nvim
  :lazy false
  :priority 1000
  :config (fn []
            (let [theme (require :catppuccin)]
              (theme.setup {:flavour "mocha"})
              (vim.cmd "colorscheme catppuccin")))}]
