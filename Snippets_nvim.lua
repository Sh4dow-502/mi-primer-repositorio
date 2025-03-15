local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- Snippet para la clase Widget
ls.add_snippets("python", {
  s(
    "ft_widget",
    fmt(
      [[
    import flet as ft


    class {}(ft.Container):
        def __init__(self):
            super().__init__()
            {}
    ]],
      {
        i(1, "Widget"), -- Placeholder 1 (nombre de la clase)
        i(0), -- Placeholder final (cursor después de expandir)
      }
    )
  ),
})

-- Snippet para la clase HomeView
ls.add_snippets("python", {
  s(
    "ft_view",
    fmt(
      [[
    import flet as ft


    class {}(ft.View):
        def __init__(self, master: ft.Page):
            super().__init__()

            self.master = master
            {}
    ]],
      {
        i(1, "HomeView"), -- Placeholder 1 (nombre de la clase)
        i(0), -- Placeholder final (cursor después de expandir)
      }
    )
  ),
})

ls.add_snippets("python", {
  s(
    "rx_widget",
    fmt(
      [[
    import reflex as rx


    class {}(rx.Component):
        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)

            {}
      ]],
      {
        i(1, "Widget"),
        i(0),
      }
    )
  ),
})
