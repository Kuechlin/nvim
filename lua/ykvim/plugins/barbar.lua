return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  version = '^1.0.0',
  config = function ()
    require('barbar').setup {
      sidebar_filetypes = {
        NvimTree = { text =  'explorer' },
        undotree = { text = 'undotree' }
      }
    }
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    -- Move to previous/next
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    -- Pin/unpin buffer
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
    -- Close buffer
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
  end
}
