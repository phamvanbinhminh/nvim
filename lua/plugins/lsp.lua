return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },

  config = function()
    -- capabilities cho nvim-cmp
    local caps = vim.lsp.protocol.make_client_capabilities()
    caps = require("cmp_nvim_lsp").default_capabilities(caps)

    -- ✅ API MỚI (Neovim 0.11+)
    vim.lsp.config("clangd", {
      capabilities = caps,
    })

    vim.lsp.enable("clangd")

    -- keymap khi LSP attach
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local o = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, o)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, o)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, o)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, o)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, o)
      end,
    })
  end,
}
