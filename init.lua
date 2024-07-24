-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
    vim.g.neovide_transparency = 0.8
    vim.neovide_font_size = 15
    vim.o.guifont = "IosevkaTerm Nerd Font:h" .. vim.neovide_font_size
end
