return {
  'nvim-tree/nvim-tree.lua',
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function ()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true

    require('nvim-tree').setup()

    vim.api.nvim_set_keymap('n', "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
  end
}
