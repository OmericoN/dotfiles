-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").pyright.setup({
  settings = {
    python = {
      analysis = {
        extraPaths = { "." }, -- add project root
      },
    },
  },
})
