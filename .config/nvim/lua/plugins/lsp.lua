return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local opts = { noremap = true, silent = true }
        local on_attach = function(_, bufnr)
            opts.buffer = bufnr

            opts.desc = "Show LSP references"
            vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", opts)

            opts.desc = "Go to definition"
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)

            opts.desc = "Go to declaration"
            vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts) -- go to declaration

            opts.desc = "Show LSP implementations"
            vim.keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

            opts.desc = "Show LSP type definitions"
            vim.keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

            opts.desc = "See available code actions"
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

            opts.desc = "Smart rename"
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

            opts.desc = "Show line diagnostics"
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

            opts.desc = "Go to previous diagnostic"
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

            opts.desc = "Go to next diagnostic"
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

            opts.desc = "Show documentation for what is under cursor"
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

            opts.desc = "Restart LSP"
            vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        -- local servers = { "ts_ls", "pyright", "html", "clangd", "pyright", "lua_ls", "tailwindcss" }
        local servers = { "clangd", "lua_ls", "html" }

        lspconfig.gopls.setup({
            filetypes = { "go", "gomod", "gowork", "gotmpl" },
            on_attach = on_attach,
            capabilities = capabilities,
        })

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
        end
    end,
}
