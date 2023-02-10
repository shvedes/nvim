local alpha = require('alpha')
local theta = require('alpha.themes.theta')
local dashboard = require('alpha.themes.dashboard')


theta.header = {
    type = "text",
    val = {
    [[                                        ]],
    [[                                        ]],
    [[                                        ]],
    [[                                        ]],
    [[                                        ]],
    [[    _   __           _    ______        ]],
    [[   / | / /__  ____  | |  / /  _/___ ___ ]],
    [[  /  |/ / _ \/ __ \ | | / // // __ `__ \]],
    [[ / /|  /  __/ /_/ / | |/ // // / / / / /]],
    [[/_/ |_/\___/\____/  |___/___/_/ /_/ /_/ ]],
    [[                                        ]],
    },
    opts = {
        position = "center",
        hl = "SpecialComment"
    }
}

theta.buttons.val = {
    { type = "text", val = "Quick buttons", opts = { position = "center", hl = "SpecialComment"}},

    { type = "padding", val = 1 },
    dashboard.button("SPC o", "  File Manager", ":NvimTreeToggle<CR>" ),
    dashboard.button("SPC e", "  New File" , ":ene <BAR> startinsert <CR>"),
    dashboard.button("SPC f", "  Find Files", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button("SPC r", "  Recent Files", ":Telescope oldfiles<CR>"),
    dashboard.button("SPC p", "  Installed packages", ":PackerStatus<CR>"),
    dashboard.button("SPC l", "  LSP settings", ":Mason<CR>"),
    dashboard.button("SPC s", "  Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | :NvimTreeToggle<CR>"),
    dashboard.button("SPC q", "  Quit", ":qa<CR>"),
}

theta.section_mru = {
    type = "group",
    val = {
        {
            type = "text",
            val = "Recent files",
            opts = {
                hl = "SpecialComment",
                shrink_margin = false,
                position = "center",
            },
        },
        { type = "padding", val = 1 },
        {
            type = "group",
            val = function()
                return { theta.mru(1, vim.fn.getcwd()) }
            end,
            opts = { shrink_margin = false },
        },
    },
}

local utils = require('config.utils')
local plugins = utils.get_plugins_list()
local hl1 = 'String'

local footer1 = {
  type = 'text',
  val = '󱓞  ' .. (#plugins) .. ' plugins loaded',
  opts = {
    position = 'center',
    hl = hl1
  }
}

theta.config = {
    layout = {
        { type = "padding", val = 1 },
        theta.header,
        footer1,
        { type = "padding", val = 1 },
        theta.buttons,
        { type = "padding", val = 1 },
        theta.section_mru,
    },
}


alpha.setup(theta.config)
