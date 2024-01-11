return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",
  },
  config = function()
    local dap = require("dap") 
    local dapui = require("dapui")
    local dapgo = require("dap-go")
    local dapvt = require("nvim-dap-virtual-text")

    require("dapui").setup()
    require("dap-go").setup()
    require("nvim-dap-virtual-text").setup()

    require("telescope").load_extension("dap")


    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint,  {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})

  end,
}