return {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function()
        local dap = require("dap")


        dap.adapters.dart = {
            type = "executable",
            command = "dart",
            args = { "debug_adapter" },
        }

        dap.configurations.dart = {
            {
                type = "dart",
                request = "launch",
                name = "Launch Dart Program",
                program = "${workspaceFolder}/lib/main.dart",
                cwd = "${workspaceFolder}",
            },
        }

        -- Opsional: Tambahkan keymaps untuk debugging
        vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
        vim.keymap.set('n', '<leader>dc', function() dap.continue() end, { desc = "Start/Continue Debugging" })
        vim.keymap.set('n', '<leader>do', function() dap.step_over() end, { desc = "Step Over" })
        vim.keymap.set('n', '<leader>di', function() dap.step_into() end, { desc = "Step Into" })
        vim.keymap.set('n', '<leader>dx', function() dap.terminate() end, { desc = "Terminate Debug Session" })
    end,

}

