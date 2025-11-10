return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      -- disables formatting capabilities in tsserver itself
      tsserver_format_options = {
        enable = false,
      },
      -- or this (for older versions):
      expose_as_code_action = 'all',
      includeInlayParameterNameHints = 'all',
      includeCompletionsForModuleExports = true,
      on_attach = function(client, bufnr)
        -- Disable tsserver formatting
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
    },
  },
}
