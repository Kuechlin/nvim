return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require('toggleterm').setup()

    vim.keymap.set('n', '<leader>tt', vim.cmd.ToggleTerm)

    function _G.set_terminal_keymaps()
      local opts = {noremap = true}
      vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd  = "lazygit", hidden = true })
    function _lazygit_toggle()
      lazygit:toggle(16)
    end

    vim.api.nvim_set_keymap('n', '<leader>tg', '<cmd>lua  _lazygit_toggle()<CR>', {noremap = true})
  end
}
