return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-j>", -- Accept suggestion with Ctrl + J
          next = "<C-k>", -- Navigate to next suggestion
          prev = "<C-h>", -- Navigate to previous suggestion
          dismiss = "<C-l>", -- Dismiss suggestion
        },
      },
      panel = { enabled = true },
    })
  end,
}
