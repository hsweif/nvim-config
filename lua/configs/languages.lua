local M = {}

function M.config()
    vim.api.nvim_create_autocmd('FileType', {
        pattern = { "typescript", "typescriptreact", "javascriptreact", "javascript" },
        callback = function(_)
            -- Do something based on the value of ft
            vim.opt.tabstop     = 2
            vim.opt.shiftwidth  = 2
            vim.opt.softtabstop = 2
        end
    })
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { "*.c" },
        command = "setfiletype c"
    })
end

return M
