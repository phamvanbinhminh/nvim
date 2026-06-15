return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "dark", -- dark | darker | cool | deep | warm
        transparent = false,
        term_colors = true,
        code_style = {
          comments = "italic",
          keywords = "bold",
          functions = "none",
          strings = "none",
          variables = "none",
        },
        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },
      })

      require("onedark").load()
    end,
  },
}
