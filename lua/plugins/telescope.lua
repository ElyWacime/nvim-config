return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function(_, opts)
    if not require("lazyvim.util").has("flash.nvim") then
      return
    end
    local function flash(prompt_bufnr)
      require("flash").jump({
        pattern = "^",
        label = { after = { 0, 0 } },
        search = {
          mode = "search",
          exclude = {
            function(win)
              return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "TelescopeResults"
            end,
          },
        },
      })
      local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
      picker:set_selection(match.pos[1] - 1)
    end
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      mappings = { n = { s = flash }, i = { ["<c-s>"] = flash } },
    })
  end,
}
