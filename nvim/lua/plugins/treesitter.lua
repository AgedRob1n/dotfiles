return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()	

		local config = require("nvim-treesitter.configs")
		config.setup({
		ensure_installed = {"c", "cpp", "css", "html",  "java", "javascript", "json", "lua", "make"},
		highlight = {enable = true},
		})
	end
}
