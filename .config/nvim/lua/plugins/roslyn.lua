return {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    opts = {
        -- your configuration comes here; leave empty for default settings
        filewatching = "auto",
        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_parameters = true,
            csharp_enable_inlay_hints_for_types = true,
          },
          ["csharp|completion"] = {
            dotnet_show_completion_items_from_unimported_namespaces = true,
          },
        }
    },
}
