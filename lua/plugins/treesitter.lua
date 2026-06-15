return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, -- load muộn cho đỡ lỗi UI
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "lua",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = false, -- 🚫 tắt để tránh crash / giật
    },
    auto_install = true,
  },
}
