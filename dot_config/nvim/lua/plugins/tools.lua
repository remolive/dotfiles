return {
    -- Cheatsheet perso en float (affiche cheatsheet.md)
    {
        "sudormrfbin/cheatsheet.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
        },
        cmd = "Cheatsheet",
    },

    -- Navigation transparente entre panes tmux et splits neovim (Ctrl+h/j/k/l)
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft", "TmuxNavigateDown",
            "TmuxNavigateUp", "TmuxNavigateRight",
        },
        keys = {
            { "<C-h>", "<cmd>TmuxNavigateLeft<cr>",  desc = "Pane left" },
            { "<C-j>", "<cmd>TmuxNavigateDown<cr>",  desc = "Pane down" },
            { "<C-k>", "<cmd>TmuxNavigateUp<cr>",    desc = "Pane up" },
            { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Pane right" },
        },
    },
}
