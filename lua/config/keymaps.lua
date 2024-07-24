-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "<C-c>", "<cmd>normal gcc<cr>", { desc = "Toggle comment current line" })
vim.keymap.set({ "n", "v" }, "U", "<CS-r>", { desc = "Redo" })

if vim.g.neovide then
    local transparency_notification
    local font_notification

    local set_font_size = function(new_font_size)
        local prev_font_size = vim.neovide_font_size
        vim.neovide_font_size = new_font_size

        if string.find(vim.o.guifont, ":h", 1, true) then
            vim.o.guifont = string.gsub(vim.o.guifont, ":h" .. prev_font_size, ":h" .. vim.neovide_font_size)
        else
            vim.o.guifont = vim.o.guifont .. ":h" .. vim.neovide_font_size
        end

        font_notification = vim.notify("Font Size: " .. vim.neovide_font_size, "info", {
            replace = font_notification,
        })
    end

    vim.keymap.set({ "n", "v" }, "<C-kLeft>", function()
        vim.g.neovide_transparency = vim.g.neovide_transparency - 0.05
        transparency_notification = vim.notify("Transparency: " .. vim.g.neovide_transparency, "info", {
            replace = transparency_notification,
        })
    end, { desc = "Increase transparency" })

    vim.keymap.set({ "n", "v" }, "<C-kRight>", function()
        vim.g.neovide_transparency = vim.g.neovide_transparency + 0.05
        transparency_notification = vim.notify("Transparency: " .. vim.g.neovide_transparency, "info", {
            replace = transparency_notification,
        })
    end, { desc = "Reduce transparency" })

    vim.keymap.set({ "n", "v" }, "<C-kPlus>", function()
        set_font_size(vim.neovide_font_size + 1)
    end, { desc = "Increase font size" })

    vim.keymap.set({ "n", "v" }, "<C-kMinus>", function()
        set_font_size(vim.neovide_font_size - 1)
    end, { desc = "Reduce font size" })
end
