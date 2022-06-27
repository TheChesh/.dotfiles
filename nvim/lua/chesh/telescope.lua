require("telescope").setup({
    defaults = {        
        -- pretty sane defaults
        prompt_prefix = " >",
        color_devicons = true,
        -- sorters
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        -- previewers
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        -- qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    },
})

local M = {}

function M.reload_modules()
    local lua_dirs = vim.fn.glob("./lua/*", 0, 1)
    -- loop over all lua dirs and reload modules within dirs
    for _, dir in ipairs(lua_dirs) do
        dir = string.gsub(dir, "./lua/*", "")
        require("plenary.reload").reload_modules(dir)
    end
end

M.search_dotfiles = function()
    require("telescope.builtin").find_files({

        prompt_title = "< CheshRC >",
        cwd = vim.env.DOTFILES,
        hidden = true,
    })
end

