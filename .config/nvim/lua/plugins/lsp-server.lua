return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(client, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map("n", "gd", vim.lsp.buf.definition, "LSP 跳定义")
        map("n", "gr", vim.lsp.buf.references, "LSP 引用")
        map("n", "K", vim.lsp.buf.hover, "悬浮文档")
        map("n", "<space>rn", vim.lsp.buf.rename, "重命名")
        map("n", "<space>ca", vim.lsp.buf.code_action, "代码修复")
      end
    end,
}
