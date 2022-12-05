-- * Plugins

local packer = require("packer")

packer.startup(function(use)

    -- | Use the Plugin Manager
    use "wbthomason/packer.nvim"

    -- | Use the Completion Engine
    use { "neoclide/coc.nvim", branch = "release" }

    -- | Use the Color Scheme
    use "folke/tokyonight.nvim"

end
)

-- * Appearance

local tokyonight = require("tokyonight")

tokyonight.setup {
    transparent = true
}

-- | Set the Color Scheme
vim.cmd("colorscheme tokyonight")

-- | Enable Sign Column
vim.opt.signcolumn = "yes"

-- | Highlight diff add group with green
vim.cmd("highlight DiffAdd guibg=NONE guifg=green")

-- | Highlight diff change group with yellow
vim.cmd("highlight DiffChange guibg=NONE guifg=yellow")

-- | Highlight diff delete group with red
vim.cmd("highlight DiffDelete guibg=NONE guifg=red")

-- * Code Actions

vim.api.nvim_set_keymap("n", "<leader>rn",
    "<Plug>(coc-rename)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>rf",
    "<Plug>(coc-refactor)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>qf",
    "<Plug>(coc-fix-current)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>al",
    "<Plug>(coc-codeaction-line)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>ac",
    "<Plug>(coc-codeaction-cursor)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>cl",
    "<Plug>(coc-codelens-action)",
    { silent = true }
)

-- * Explorer

vim.api.nvim_set_keymap("n", "<leader>e",
    "<Cmd>CocCommand explorer<CR>",
    { silent = true }
)

local explorer_group = vim.api.nvim_create_augroup("Explorer",
    { clear = true }
)

vim.api.nvim_create_autocmd("FileType",
    {
        group = explorer_group,

        command = [[

if &filetype == 'coc-explorer'
    setlocal statusline=coc-explorer
endif

]]
    }
)

-- * Format

vim.api.nvim_set_keymap("n", "<leader>f",
    "<Cmd>call CocActionAsync('format')<CR>",
    { silent = true }
)

-- * Go to

vim.api.nvim_set_keymap("n", "gd",
    "<Plug>(coc-definition)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "gy",
    "<Plug>(coc-type-definition)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "gi",
    "<Plug>(coc-implementation)",
    { silent = true }
)

vim.api.nvim_set_keymap("n", "gr",
    "<Plug>(coc-references)",
    { silent = true }
)

-- * Tabs and Indents

-- | Set tab stop
vim.opt.tabstop = 4

-- | Set shift width
vim.opt.shiftwidth = 4

-- | Enable expansion
vim.opt.expandtab = true

-- | Enable smart indents
vim.opt.smartindent = true

-- | Enable smart tabs
vim.opt.smarttab = true
