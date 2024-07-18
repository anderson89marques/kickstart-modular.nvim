return {
  'AckslD/swenv.nvim',
  dependencies = {
    { 'stevearc/dressing.nvim' },
  },
  opts = function()
    config = {
      post_sent_env = function()
        vim.cmd 'LspRestart'
      end,
    }

    vim.keymap.set('n', '<leader>TT', '<cmd>lua require("swenv.api").pick_venv()<cr>', { desc = 'Choose env' })
  end,
}
