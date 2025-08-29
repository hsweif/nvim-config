local M = {}

function M.config()
    -- copilot configs
    vim.g.copilot_no_tab_map         = true
    vim.g.copilot_filetypes          = {
        ["*"] = false,
        ["javascript"] = true,
        ["typescript"] = true,
        ["typescriptreact"] = true,
        ["css"] = true,
        ["lua"] = true,
        ["rust"] = true,
        ["c"] = true,
        ["c#"] = true,
        ["c++"] = true,
        ["go"] = true,
        ["python"] = true,
        ["markdown"] = true,
    }
end

return M
