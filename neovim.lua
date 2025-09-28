return {
	{
		"NvChad/ui",
		lazy = false,
		priority = 1000,
		opts = {
			theme = "radium",
			highlights = {
				-- Custom highlights using the Radium palette
				LineNr = { fg = "#525559", bg = "#0a0d11" }, -- Dim grey foreground on main background

				TabLineFill = { bg = "#0a0d11" }, -- Make inactive tabs blend with the background
				TabLine = { bg = "#0a0d11" },
				TabLineSel = { bg = "#191d22" }, -- Use a slightly lighter grey for the active tab background
			},
		},
	},
}
