local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  require("notify").notify("Error loading lspconfig", "error")
  return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")