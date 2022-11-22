-- Set update time
vim.opt.updatetime = 150

-- Set tab stop
vim.opt.tabstop = 4

-- Set shift width
vim.opt.shiftwidth = 4

-- Enable tab expansion
vim.opt.expandtab = true

-- Enable smart indents
vim.opt.smartindent = true

-- Enable smart tabs
vim.opt.smarttab = true

-- Enable sign column
vim.opt.signcolumn = "yes"

local packer = require("packer")

packer.startup(function(use)

    -- Plugin manager
    use "wbthomason/packer.nvim"

    -- Completion engine
    use {"neoclide/coc.nvim", branch = "release"}

    -- Color scheme
    use "folke/tokyonight.nvim"

    end
)

vim.api.nvim_set_keymap(
    "n", "[g", "<Plug>(coc-diagnostics-prev)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "]g", "<Plug>(coc-diagnostics-next)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "gd", "<Plug>(coc-definition)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "gy", "<Plug>(coc-type-definition)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "gi", "<Plug>(coc-implementation)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "gr", "<Plug>(coc-references)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>rn", "<Plug>(coc-rename)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>rf", "<Plug>(coc-refactor)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>qf", "<Plug>(coc-fix-current)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>al", "<Plug>(coc-codeaction-line)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>cl", "<Plug>(coc-codelens-action)", {
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n", "<leader>ex", "<Cmd>CocCommand explorer<CR>", {
        silent = true
    }
)

local tokyonight = require("tokyonight")

tokyonight.setup {
    transparent = true
}

-- Set Tokyo Night color scheme
vim.cmd("colorscheme tokyonight")
