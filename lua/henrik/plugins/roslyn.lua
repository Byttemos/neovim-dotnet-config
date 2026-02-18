return {
    "seblyng/roslyn.nvim",
    lazy = true,
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    ft = {"cs", "razor", "fsx"},
    opts = {
        -- your configuration comes here; leave empty for default settings
        dotnet_enable_references_code_lens = true,
    },
}
