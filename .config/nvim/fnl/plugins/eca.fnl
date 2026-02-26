[{1 :editor-code-assistant/eca-nvim
  :dependencies [:MunifTanjim/nui.nvim
                 :nvim-lua/plenary.nvim
                 :folke/snacks.nvim]
  :init (fn []
          (vim.keymap.set :n :<leader>ec "<cmd>EcaChat<cr>"   {:noremap true})
          (vim.keymap.set :n :<leader>ef "<cmd>EcaFocus<cr>"  {:noremap true})
          (vim.keymap.set :n :<leader>et "<cmd>EcaToggle<cr>" {:noremap true}))
  :opts {:debug false
         :behavior {:auto_set_keymaps true
                    :auto_focus_sidebar true}}}]
