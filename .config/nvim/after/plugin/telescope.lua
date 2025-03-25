local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() 
    builtin.find_files({ hidden = true });
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>lf', function()
    builtin.lsp_document_symbols({
        symbols = { 'function', 'method' }
    })
end)

vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})

-- This is open neovim config dir from active dir
vim.keymap.set('n', '<leader>gc', function() 
    builtin.find_files({cwd=vim.fn.stdpath("config")})
end)
