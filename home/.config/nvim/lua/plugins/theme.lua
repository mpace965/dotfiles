return {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {
    on_highlights = function(colors, color)
      ---@type solarized.highlights
      local groups = {
        ["@string.special.symbol"] = { fg = colors.violet },
      }

      return groups
    end,
  },
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = "light"
    require("solarized").setup(opts)
    vim.cmd.colorscheme("solarized")
  end,
}
