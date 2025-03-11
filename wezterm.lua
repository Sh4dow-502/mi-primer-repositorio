local wezterm = require("wezterm")

return {
	color_scheme = "tokyonight",
	font = wezterm.font_with_fallback({
		{ family = "Cascadia Code PL", harfbuzz_features = { "calt=1", "clig=1", "liga=1" } },
	}),
	font_size = 11.0,
	enable_tab_bar = false,
	window_padding = {
		left = 5,
		right = 5,
		top = 7,
		bottom = 5,
	},

	initial_cols = 156,
	initial_rows = 47,
}
