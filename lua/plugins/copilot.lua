return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true, auto_trigger = true },
      panel = { enabled = true },
      server_opts_overrides = {
        model = "gpt-4-turbo", -- Change to "gpt-3.5-turbo" if needed
      },
    })
  end,
}
