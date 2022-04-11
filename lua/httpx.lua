local M = {}

function M.execute()
    vim.api.nvim_command('write')
    local filePath = vim.api.nvim_buf_get_name(0)
    local lineNum = vim.api.nvim_win_get_cursor(0)[1]
    local cmd = "httpx -f " .. filePath .. " line:" .. lineNum
    local output = vim.fn.system(cmd)
    print(output)
end

return M
