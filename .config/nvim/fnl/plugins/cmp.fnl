; (local cmp-src-menu-items
;   {:buffer "buff"
;    :conjure "conj"
;    :nvim_lsp "lsp"
;    :vsnip "vsnp"
;    :luasnip "lsnp"})
;
; (local cmp-srcs
;   [{:name :nvim_lsp}
;    {:name :conjure}
;    {:name :buffer}
;    {:name :vsnip}
;    {:name :luasnip}])
;
; (fn has-words-before []
;   (let [(line col) (unpack (vim.api.nvim_win_get_cursor 0))]
;     (and (not= col 0)
;          (= (: (: (. (vim.api.nvim_buf_get_lines 0 (- line 1) line true) 1) :sub col col) :match "%s") nil))))
;
; [{1 :L3MON4D3/LuaSnip
;   :version "v2.*"
;   :build "make install_jsregexp"}
;  {1 :hrsh7th/nvim-cmp
;   :dependencies [:hrsh7th/cmp-buffer
;                  :hrsh7th/cmp-nvim-lsp
;                  :hrsh7th/cmp-vsnip
;                  :PaterJason/cmp-conjure
;                  ; :L3MON4D3/LuaSnip
;                  :saadparwaiz1/cmp_luasnip]
;   :config (fn []
;             (let [cmp (require :cmp)
;                   luasnip (require :luasnip)]
;               (cmp.setup {:formatting {:format (fn [entry item]
;                                                  (set item.menu (or (. cmp-src-menu-items entry.source.name) ""))
;                                                  item)}
;                           :mapping {:<C-p> (cmp.mapping.select_prev_item)
;                                     :<C-n> (cmp.mapping.select_next_item)
;                                     :<C-b> (cmp.mapping.scroll_docs (- 4))
;                                     :<C-f> (cmp.mapping.scroll_docs 4)
;                                     :<C-Space> (cmp.mapping.complete)
;                                     :<C-e> (cmp.mapping.close)
;                                     :<CR> (cmp.mapping.confirm {:behavior cmp.ConfirmBehavior.Insert
;                                                                 :select true})
;                                     :<Tab> (cmp.mapping (fn [fallback]
;                                                           (if
;                                                             (cmp.visible) (cmp.select_next_item)
;                                                             (luasnip.expand_or_jumpable) (luasnip.expand_or_jump)
;                                                             (has-words-before) (cmp.complete)
;                                                             :else (fallback)))
;                                                         {1 :i 2 :s})
;                                     :<S-Tab> (cmp.mapping (fn [fallback]
;                                                             (if
;                                                               (cmp.visible) (cmp.select_prev_item)
;                                                               (luasnip.jumpable -1) (luasnip.jump -1)
;                                                               :else (fallback)))
;                                                           {1 :i 2 :s})
;                                     :<Down> (cmp.mapping (fn [fallback]
;                                                            (if
;                                                              (cmp.visible) (cmp.select_next_item)
;                                                              (luasnip.expand_or_jumpable) (luasnip.expand_or_jump)
;                                                              (has-words-before) (cmp.complete)
;                                                              :else (fallback)))
;                                                          {1 :i 2 :s})
;                                     :<Up> (cmp.mapping (fn [fallback]
;                                                          (if
;                                                            (cmp.visible) (cmp.select_prev_item)
;                                                            (luasnip.jumpable -1) (luasnip.jump -1)
;                                                            :else (fallback)))
;                                                        {1 :i 2 :s})}
;                           :snippet {:expand (fn [args]
;                                               (luasnip.lsp_expand args.body))}
;                           :sources cmp-srcs})))}]

;; need to port ^ for completion and so on..

[{1 :saghen/blink.compat
  :version "*"
  :lazy true}

 {1 :saghen/blink.cmp
  :version "*"
  :lazy false

  :dependencies [:rafamadriz/friendly-snippets
                 :PaterJason/cmp-conjure
                 :mikavilpas/blink-ripgrep.nvim
                 :L3MON4D3/LuaSnip]

  :opts {:keymap {:preset :enter
                  :<Tab> [:select_next :fallback]}

         :appearance {:use_nvim_cmp_as_default true
                      :nerd_font_variant :mono}

         :completion {:ghost_text {:enabled true}
                      :menu {:draw {:columns [[:kind_icon]
                                              {1 :label
                                               2 :label_description
                                               :gap 1}
                                              [:source_name]]}}}

         :snippets {:preset :luasnip}

         :cmdline {:enabled false}

         :sources {:default [:lsp :path :snippets :buffer :conjure :ripgrep]
                   :providers {:conjure {:name :conjure
                                         :module :blink.compat.source
                                         :score_offset -3}
                               :ripgrep {:module :blink-ripgrep
                                         :name :Ripgrep
                                         :score_offset -3}}}}}]
