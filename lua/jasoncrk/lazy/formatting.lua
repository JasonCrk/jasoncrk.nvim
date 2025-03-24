return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                json = { "prettier" },
                javascript = { "prettier" },
                css = { "prettier" },
                typescript = { "prettier" },
                html = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                astro = { "prettier" },
                yaml = { "yamlfmt" },
                go = { "goimports", "gofmt" },
                rust = { "rustfmt", lsp_format = "fallback" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
