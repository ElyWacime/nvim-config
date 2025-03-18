return {
  "CopilotC-Nvim/CopilotChat.nvim",
  event = "VeryLazy",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- Ensure Copilot is installed
    { "nvim-lua/plenary.nvim" }, -- Required dependency
  },
  opts = {
    window = { layout = "float" }, -- Use a floating window instead of a tab
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChat<cr>", desc = "Copilot Chat" },
    { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "Explain Code" },
    { "<leader>ct", "<cmd>CopilotChatTests<cr>", desc = "Generate Tests" },
    { "<leader>cf", "<cmd>CopilotChatFix<cr>", desc = "Fix Code" },
    { "<leader>co", "<cmd>CopilotChatOptimize<cr>", desc = "Optimize Code" },
    {
      "<leader>ci",
      function()
        local input = vim.fn.input("Copilot Chat: ") -- Prompt user for input
        if input ~= "" then
          vim.cmd("CopilotChat " .. vim.fn.escape(input, " ")) -- Send input to Copilot Chat
        else
          print("No input provided")
        end
      end,
      desc = "Copilot Chat with Input",
      mode = "n",
    },
  },
}
