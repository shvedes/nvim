-- Source https://codeberg.org/cruzin/dotfiles/src/commit/747684a6b2072a52ba031d19996d3aa2ee41870c/.config/nvim/lua/plugin/alpha.lua
local M = {}

M.get_plugins_list = function()
  local short_name = require('packer.util').get_plugin_short_name
  local list_plugins = require('packer.plugin_utils').list_installed_plugins

  local opt, start = list_plugins()
  local plugin_paths = vim.tbl_extend('force', opt, start)
  local plugins = {}

  for path in pairs(plugin_paths) do
    local name, _ = short_name({ path }):gsub('.nvim', '')
    table.insert(plugins, name)
  end

  table.sort(plugins)

  return plugins
end

return M
