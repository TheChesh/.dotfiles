local api = vim.api
local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

function GetTheCrayons()
    -- set colorscheme
    cmd[[colorscheme tokyonight]]
    -- make a highlighter
    local highlight = function(obj, opts)
        api.nvim_set_hl(0, obj, opts)
    end
    -- get artsy
    highlight("SignColumn", {
        bg = "none",
    })
    highlight("ColorColumn", {
        bg = "none",
    })
    highlight("CursorLineNR", {
        bg = "none",
    })
    highlight("Normal", {
        bg = "none",
    })
    highlight("LineNR", {
        fg = "#5eacd3",
    })
    highlight("netrwDir", {
        fg = "#5eacd3",
    })
end

GetTheCrayons()
