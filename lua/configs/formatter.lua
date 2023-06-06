local M = {}

function M.config()
    local prettier = require("prettier")
    prettier.setup({
        bin = 'prettier', -- or `'prettierd'` (v0.22+)
        filetypes = {
            "scss",
            "css",
            "graphql",
            "html",
            "javascript",
            "javascriptreact",
            "json",
            "less",
            "markdown",
            "scss",
            "typescript",
            "typescriptreact",
            "yaml",
        },
    })
    vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({async=true})]]
end

return M
