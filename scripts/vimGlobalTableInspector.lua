local output = {}

for _, key in ipairs(vim.tbl_keys(vim.fn)) do
	table.insert(output, key .. ":" .. type(vim.fn[key]))
end

vim.cmd("new")
vim.api.nvim_buf_set_lines(0, 0, -1, false, output)

-- to run this script run 'luafile %'
