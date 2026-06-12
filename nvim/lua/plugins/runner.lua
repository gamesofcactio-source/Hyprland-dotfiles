return {
  "CRAG666/code_runner.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  keys = {
    {
      "<leader>r",
      "<cmd>RunCode<CR>",
      desc = "Run Code",
    },
  },

  config = function()
    require("code_runner").setup({
      filetype = {
        cpp = "cd $dir && clang++ -std=c++23 $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
      },
    })
  end,
}
