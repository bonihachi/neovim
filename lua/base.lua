vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'

vim.cmd('set fileencodings=utf-8,euc-jp,cp932')

vim.wo.number = true

vim.opt.helplang = 'ja',  'en'

-- Open hope file
vim.api.nvim_create_user_command('Memo', function(ops)
	vim.cmd('e ' .. '~/_/notes/memo.md')
end, {})
