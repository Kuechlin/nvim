return {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
      -- [[ Configure onedark ]]
      local theme = require('onedark')
      theme.setup {
        style = 'darker',
        transparent = false,
        lualine = {
          transparent = false
        }
      }
      theme.load()
    end,
}
