return {
    {
        "akinsho/toggleterm.nvim",
        config = true,
        cmd = "ToggleTerm",
        keys = { { "\\", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
        opts = {
            open_mapping = [[\\]],
            direction = "vertical",
            size = 50,
            persist_mode = true,
            shade_filetypes = {},
            insert_mappings = true,
            terminal_mappings = true,
            start_in_insert = true,
            close_on_exit = true,
        },
    },
}
