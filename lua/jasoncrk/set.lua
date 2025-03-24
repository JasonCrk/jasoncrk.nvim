vim.opt.mouse = ""

vim.opt.guicursor = ""

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.ignorecase = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.wildignore:append({ "*/node_modules/*" })

vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }

vim.opt.formatoptions:append({ "r" })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.colorcolumn = "79"
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c,cpp",
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
        vim.opt.shiftwidth = 4
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "rust,yml",
    callback = function()
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.colorcolumn = "100"
    end
})
