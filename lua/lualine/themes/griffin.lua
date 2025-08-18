local colors = require("griffin.palette")

return {
	normal = {
		a = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
		b = { bg = colors.editor_foreground, fg = colors.ui_accent_blue3 },
		c = { bg = colors.ui_accent_blue2, fg = colors.editor_foreground },
	},
	insert = {
		a = { bg = colors.ui_accent_darkblue, fg = colors.editor_foreground, gui = "bold" },
		b = { bg = colors.editor_foreground, fg = colors.ui_accent_blue3 },
		c = { bg = colors.ui_accent_blue2, fg = colors.editor_foreground },
		z = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
	},
	visual = {
		a = { bg = colors.ui_accent_lightblue, fg = colors.editor_background, gui = "bold" },
		b = { bg = colors.editor_foreground, fg = colors.ui_accent_blue3 },
		c = { bg = colors.ui_accent_blue2, fg = colors.editor_foreground },
		z = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
	},
	replace = {
		a = { bg = colors.ui_accent_red, fg = colors.editor_foreground, gui = "bold" },
		b = { bg = colors.editor_foreground, fg = colors.ui_accent_blue3 },
		c = { bg = colors.ui_accent_blue2, fg = colors.editor_foreground },
		z = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
	},
	command = {
		a = { bg = colors.ui_accent_orange, fg = colors.editor_background, gui = "bold" },
		b = { bg = colors.editor_foreground, fg = colors.ui_accent_blue3 },
		c = { bg = colors.ui_accent_blue2, fg = colors.editor_foreground },
		z = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
	},
	inactive = {
		a = { bg = colors.ui_background, fg = colors.editor_foreground, gui = "bold" },
		b = { bg = colors.ui_background, fg = colors.editor_foreground },
		c = { bg = colors.ui_background, fg = colors.editor_foreground },
		z = { bg = colors.ui_accent_blue3, fg = colors.editor_foreground, gui = "bold" },
	},
}
