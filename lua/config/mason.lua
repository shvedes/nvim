require("mason").setup({
    ui = {
        border = "single",
        width = 120,
        height = 35,
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
        keymaps = {
            toggle_package_expand = "<CR>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "U",
            check_outdated_packages = "C",
            uninstall_package = "d",
            cancel_installation = "<C-c>",
            apply_language_filter = "<C-f>",
        },
    }
})
