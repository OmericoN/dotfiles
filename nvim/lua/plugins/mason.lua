return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "pyright",
        "ruff",
        "black",
        "debugpy",

        -- JS / Web
        "typescript-language-server",
        "prettier",
      },
    },
  },
}
