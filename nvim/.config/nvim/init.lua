-- Install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
    -- LSP and completion
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    -- Syntax Highlighting
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    -- Formatter
    "jose-elias-alvarez/null-ls.nvim",
    "prettier/vim-prettier",
})

-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.termguicolors = true

-- Treesitter setup
require("nvim-treesitter.configs").setup {
    ensure_installed = { "typescript", "javascript", "json", "yaml", "markdown", "go" },
    highlight = { enable = true },
}

-- LSP setup
local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.gopls.setup({})
lspconfig.jsonls.setup({})
lspconfig.yamlls.setup({})

-- Autocompletion setup
local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" },
    },
})

-- Keybindings
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true })

-- Prettier formatting
vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js,*.json,*.md,*.yaml Prettier]])
