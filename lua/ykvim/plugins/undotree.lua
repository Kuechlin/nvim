return {
  'mbbill/undotree',
  lazy = false,
  config = function ()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

    vim.g.undotree_WindowLayout = 3
  end
}
