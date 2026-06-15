return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  cmd = { "NvimTreeToggle", "NvimTreeOpen" },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        width = 30,
      },
      renderer = {
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
          },
        },
      },
    })
  end,
}
