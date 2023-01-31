require("after.plugins-setup")
require("after.core.options")
require("after.core.keymaps")
require("after.core.colorscheme")
require("after.plugins.comment")
require("after.plugins.nvim-tree")
require("after.plugins.lualine")
require("after.plugins.telescope")
require("after.plugins.nvim-cmp")
require("after.plugins.lsp.mason")
require("after.plugins.lsp.lspsaga")
require("after.plugins.lsp.lspconfig")
require("after.plugins.lsp.null-ls")
require("after.plugins.nvim-ufo")
require("after.plugins.autopairs")
require("after.plugins.treesitter")
require("after.plugins.git")
require("after.plugins.gitsigns")
require("after.plugins.bufferline")
require("after.plugins.colorizer")
require("after.plugins.prettier")

vim.opt.guifont = { "Hasklig", ":h17" }
vim.o.background = "dark"
vim.cmd([[colorscheme moonfly]])

vim.g.neovide_refresh_rate = 100
vim.g.neovide_refresh_rate_idle = 10
