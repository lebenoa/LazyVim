-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.o.guifont = "IosevkaTerm Nerd Font"
end
