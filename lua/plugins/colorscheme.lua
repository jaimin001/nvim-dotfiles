return {
    -- add gruvbox
    {
        "morhetz/gruvbox",
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
