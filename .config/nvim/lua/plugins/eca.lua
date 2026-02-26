-- [nfnl] fnl/plugins/eca.fnl
local function _1_()
  vim.keymap.set("n", "<leader>ec", "<cmd>EcaChat<cr>", {noremap = true})
  vim.keymap.set("n", "<leader>ef", "<cmd>EcaFocus<cr>", {noremap = true})
  return vim.keymap.set("n", "<leader>et", "<cmd>EcaToggle<cr>", {noremap = true})
end
return {{"editor-code-assistant/eca-nvim", dependencies = {"MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "folke/snacks.nvim"}, init = _1_, opts = {behavior = {auto_set_keymaps = true, auto_focus_sidebar = true}, debug = false}}}
