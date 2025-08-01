local colors = {
	black = "#1a191e",
	white = "#eeffff",
	red = "#f07178",
	green = "#b8bb26",
	status = "#07373e",
	statust = "#184860",
	orange = "#f89406",
	darkgray = "#72767f",
	blue = "#6796e6",
	lightblue = "#89ddff",
}

local griffin_lualine = {
	normal = {
		a = { bg = colors.status, fg = colors.white, gui = "bold" },
		b = { bg = colors.white, fg = colors.status },
		c = { bg = colors.statust, fg = colors.white },
	},
	insert = {
		a = { bg = colors.blue, fg = colors.white, gui = "bold" },
		b = { bg = colors.white, fg = colors.status },
		c = { bg = colors.statust, fg = colors.white },
		z = { bg = colors.status, fg = colors.white, gui = "bold" },
	},
	visual = {
		a = { bg = colors.lightblue, fg = colors.black, gui = "bold" },
		b = { bg = colors.white, fg = colors.status },
		c = { bg = colors.statust, fg = colors.white },
		z = { bg = colors.status, fg = colors.white, gui = "bold" },
	},
	replace = {
		a = { bg = colors.red, fg = colors.white, gui = "bold" },
		b = { bg = colors.white, fg = colors.status },
		c = { bg = colors.statust, fg = colors.white },
		z = { bg = colors.status, fg = colors.white, gui = "bold" },
	},
	command = {
		a = { bg = colors.orange, fg = colors.black, gui = "bold" },
		b = { bg = colors.white, fg = colors.status },
		c = { bg = colors.statust, fg = colors.white },
		z = { bg = colors.status, fg = colors.white, gui = "bold" },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.white, gui = "bold" },
		b = { bg = colors.darkgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
		z = { bg = colors.status, fg = colors.white, gui = "bold" },
	},
}

return griffin_lualine
