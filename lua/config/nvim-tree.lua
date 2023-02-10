require('nvim-tree').setup {
    disable_netrw = true,
    hijack_cursor = true,

    view = {
        preserve_window_proportions = true,
        centralize_selection = true,
        debounce_delay = 300,
        cursorline = true,
        number = true,
        width = 40,
        -- height = 30,
    },

    modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
    },

    renderer = {
        indent_width = 3,
        full_name = true,
        highlight_git = true,
        highlight_modified = "icon",
        highlight_opened_files = "icon",

        indent_markers = {
            enable = true,
        },

        icons = {
            symlink_arrow = " ",

        glyphs = {
                modified = " ",
            }
        },
    },

    actions = {
        expand_all = {
            exclude = { ".git", ".gitignore" }
        },

        file_popup = {
            open_win_config = {
                col = 1,
                row = 1,
                relative = "cursor",
                border = "double",
                style = "minimal",
            }
        },

        open_file = {
            quit_on_open = true,
        }
    },

    tab = {
        sync = {
            open = true,
            close = true,
        },
    }
}
