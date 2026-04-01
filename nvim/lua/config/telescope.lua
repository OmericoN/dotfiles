-- lua/config/telescope.lua
local telescope = require("telescope")

telescope.setup({
  defaults = {
    -- Force Windows to use fd
    find_command = { "fd", "--type", "f", "--hidden", "--exclude", ".git" },
  },
})
