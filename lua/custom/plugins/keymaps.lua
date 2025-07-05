return {
  vim.diagnostic.config { virtual_text = false },

  -- Custom keymaps
  vim.keymap.set('n', '<C-s>', '<cmd>w<CR>'),
  vim.keymap.set('i', '<C-s>', '<Esc><cmd>w<CR>'),
  vim.keymap.set('n', 'gK', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config { virtual_lines = new_config }
  end, { desc = 'Toggle diagnostic virtual_lines' }),
}
