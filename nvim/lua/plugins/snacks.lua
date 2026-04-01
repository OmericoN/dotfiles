return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          -- This configures the file explorer (<leader>e)
          explorer = {
            hidden = false,
            ignored = false, -- Shows your .env even if it's in .gitignore
          },
          -- This configures the file picker (<leader>ff)
          files = {
            hidden = true,
            ignored = true,
          },
          -- This configures live grep (<leader>sg) to search inside .env
          grep = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
