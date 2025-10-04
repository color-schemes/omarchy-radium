function ColorMyPencils(color)
	color = color or "material"
	vim.cmd.colorscheme(color)

	-- Transparent background for the normal UI elements
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"marko-cerovac/material.nvim",
		config = function()
			require("material").setup({
				contrast = {
					terminal = false,
					sidebars = true, -- Enable contrast for sidebar-like windows (like Nvim-Tree)
					floating_windows = true,
					cursor_line = false,
					lsp_virtual_text = false,
					non_current_windows = false,
				},
				styles = {
					comments = { italic = true },
					strings = { bold = true },
					keywords = { underline = true },
					functions = { bold = true, undercurl = true },
					variables = { italic = true },
					operators = { bold = true },
					types = { italic = false },
				},
				plugins = {
					"telescope",
					"nvim-tree",
				},
				disable = {
					colored_cursor = false,
					borders = true, -- Keep borders between vertically split windows
					background = true,
					term_colors = false,
					eob_lines = false,
				},
				high_visibility = {
					lighter = false,
					darker = false,
				},
				lualine_style = "default",
				async_loading = true,
				custom_colors = nil,
				custom_highlights = {}, -- Overwrite specific highlights if necessary
			})

			-- Set your style (optional, based on your preference)
			vim.g.material_style = "darker"

			-- Apply the Material colorscheme
			vim.cmd("colorscheme material")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})

			ColorMyPencils()
		end,
	},
}
