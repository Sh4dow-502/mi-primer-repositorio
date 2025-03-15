return {
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        easing_function = "quadratic", -- Función de suavizado
        hide_cursor = true,
      })
    end,
  },
}
