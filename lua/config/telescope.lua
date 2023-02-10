require('telescope').setup {
    defaults = {
        winblend = 10,
        border = true,
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        prompt_prefix = "> ",
        selection_caret = "  ",
        initial_mode = "normal",
        prompt_title = "Search",
        results_title = "List",
        dynamic_menu_title = true,
        layout_strategy = "center",
        preview = false,
        layout_config = {
            center = {
                height = 0.4,
                preview_cutoff = 40,
                prompt_position = "top",
                width = 0.5
          },
        },
        file_ignore_patterns = {
            "%.nls", "%.png", "%.jpg", "%.img", "%.webp", "%.gif", "%.mp4", "%.exe", "%.mp3", "%.wav", "%.msi",
            "%.tar", "%.zst", "%.iso", "%.zip", "%.7zip", "%.rar", "%.osk", "%.dll", "%.sys", "%.ja", "%.ttf", "%.otf",
            "trash", "Games"
        },
        path_display = {
            shorten = {
                len = 2,
                exclude = {1, -1}
            },
        },
    }
}

