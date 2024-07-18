-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvimtools/none-ls.nvim',
  filetypes = { 'python', 'go' },
  opts = function()
    local null_ls = require 'null-ls'
    sources = {
      --null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.mypy.with {
        extra_args = function()
          local virtual = os.getenv 'VIRTUAL_ENV' or os.getenv 'CONDA_PREFIX' or '/usr'
          return { '--python-executable', virtual .. '/bin/python3' }
        end,
      },
      null_ls.builtins.formatting.gofumpt,
      null_ls.builtins.formatting.goimports_reviser,
    }
  end,
}
