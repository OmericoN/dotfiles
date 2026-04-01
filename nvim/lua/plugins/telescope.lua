return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        -- Add any folders here that you DON'T want to search through
        file_ignore_patterns = {
          "%.git/",
          "node_modules/",
          "%.cache",
          "%.next/",
          "build/",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true, -- THIS is the magic line that bypasses .gitignore
        },
        live_grep = {
          additional_args = function()
            -- --hidden shows dotfiles, --no-ignore bypasses .gitignore
            return { "--hidden", "--no-ignore" }
          end,
        },
        grep_string = {
          additional_args = function()
            return { "--hidden", "--no-ignore" }
          end,
        },
      },
    },
  },
}
