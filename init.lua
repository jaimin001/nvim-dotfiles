-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("telescope").setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--hidden",
            "--smart-case",
        },
        file_ignore_patterns = {
            -- ignore dotnet generated folders in the file search
            "^bin/",
            "^obj/",
            "/bin/",
            "/obj/",
            -- ignore .git folders (usefull when using hidden=true option)
            "^.git/",
            "/.git/",
        },
        mappings = {
            i = {
                ["<C-u>"] = false,
                ["<C-d>"] = false,
            },
        },
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})

-- telescope keybindins
vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files({ hidden = true, no_ignore = false, no_ignore_parent = false })
end)
vim.keymap.set("n", "<leader>fw", function()
    require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
end)
vim.keymap.set("n", "<leader>fb", function()
    require("telescope.builtin").buffers({ show_all_buffers = true })
end)
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<leader>fgg", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>fgb", require("telescope.builtin").git_branches)
vim.keymap.set("n", "<leader>fgc", require("telescope.builtin").git_commits)
vim.keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_implementations)
vim.keymap.set("n", "<leader>fs", require("telescope.builtin").lsp_document_symbols)
vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "my: find keybindings" })
vim.keymap.set("n", "<leader>fm", function()
    require("telescope.builtin").lsp_document_symbols({ symbols = { "method", "function" } })
end)
vim.keymap.set("n", "<leader>fsw", require("telescope.builtin").lsp_workspace_symbols)
vim.keymap.set("n", "<leader>fc", function()
    require("telescope.builtin").lsp_workspace_symbols({ symbols = "class" })
end)
vim.keymap.set("n", "<leader>fp", function()
    vim.cmd("Telescope projections")
end, { desc = "my: find projects" })
-- vim.keymap.set('n', '<leader>sf', function() require('telescope.builtin').find_files({previewer = false}) end)
-- vim.keymap.set('n', '<leader>sb', require('telescope.builtin').current_buffer_fuzzy_find)
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags)
-- vim.keymap.set('n', '<leader>st', require('telescope.builtin').tags)
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').grep_string)
-- vim.keymap.set('n', '<leader>so', require('telescope.builtin').tags{ only_current_buffer = true })
-- vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles)
vim.keymap.set("n", "<space>/", function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<D-0>", ":b#<CR>", { desc = "my: switch between two last active buffers" })
vim.keymap.set("n", "<space>rw", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>/g<Left><Left>")
