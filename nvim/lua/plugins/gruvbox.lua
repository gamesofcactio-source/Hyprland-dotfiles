return {
  -- 1. Configure Gruvbox with transparency enabled
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Make sure it loads first
    opts = {
      transparent_mode = true, -- This strips the solid background colors
    },
  },

  -- 2. Tell LazyVim to actually use gruvbox as the default theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
