return {
    -- add gruvbox
    {
        "ellison/gruvbox.nvim",
        opt = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                float = "transparent",
            },
        },
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
