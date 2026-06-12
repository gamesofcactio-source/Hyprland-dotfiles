return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = false,
      },
    },
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      render = "minimal",
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "none",
        },
      },
    },
  },
}
