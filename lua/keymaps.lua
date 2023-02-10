--- Foce quit ---
vim.keymap.set('n', '<c-q>', ':q!<CR>', {})

--- Telescope section --- 

-- Open telescope and show hidden files 
vim.api.nvim_set_keymap('n', '<c-f>', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
-- Open telescope and show current opened buffers 
vim.api.nvim_set_keymap('n', '<c-b>', ':Telescope buffers<CR>', {})

--- Open / Close nvim-tree ---
vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--- Open / Close terminal --- 
vim.api.nvim_set_keymap('n', '<c-/>', ':ToggleTerm<CR>', { noremap = true, silent = true })
