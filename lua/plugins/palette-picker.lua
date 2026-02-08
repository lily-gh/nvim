return {
  "lily-gh/palette-picker.nvim",
  branch = "main",

  dependencies = {
    { "nvim-telescope/telescope.nvim" }
  },

  lazy = false,

  config = function()
    vim.keymap.set("n", "<leader>p", ":PalettePicker<CR>", {})
  end,
}

