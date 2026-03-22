return {
  -- Disable OmniSharp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = { enabled = false },
      },
    },
  },

  -- Add Crashdummyy registry so Mason can find Roslyn
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },

  -- Roslyn LSP
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {},
  },
}
