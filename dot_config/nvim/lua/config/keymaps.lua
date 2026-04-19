local map = vim.keymap.set

-- Ctrl+S : sauvegarder (VSCode-like)
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })


-- Lazydocker dans un float terminal
map("n", "<leader>gd", function()
    require("snacks").terminal("lazydocker", { cwd = vim.fn.getcwd() })
end, { desc = "Lazydocker" })

-- Navigation buffers VSCode-like
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
