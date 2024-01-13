return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"ThePrimeagen/harpoon",
				event = { "BufReadPre", "BufNewFile", "InsertEnter" },
				build = function()
					require("telescope").load_extension("harpoon")
				end,
			},
		},
		config = function()
			local tele = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", tele.find_files, {})
			vim.keymap.set("n", "<leader>fg", tele.live_grep, {})
			vim.keymap.set("n", "<leader>fh", tele.help_tags, {})
			vim.keymap.set("n", "<leader>fb", tele.buffers, {})
			vim.keymap.set("n", "<leader>vd", tele.lsp_definitions, {})
			vim.keymap.set("n", "<leader>vi", tele.lsp_implementations, {})
			vim.keymap.set("n", "<leader>vt", tele.lsp_type_definitions, {})
			vim.keymap.set("n", "<leader>vr", tele.lsp_references, {})

			local harp_ui = require("harpoon.ui")
			local harp_mark = require("harpoon.mark")
			vim.keymap.set("n", "<C-n>", harp_ui.nav_next, {})
			vim.keymap.set("n", "<C-p>", harp_ui.nav_prev, {})
			vim.keymap.set("n", "<M-j>", function()
				harp_ui.nav_file(1)
			end)
			vim.keymap.set("n", "<M-k>", function()
				harp_ui.nav_file(2)
			end)
			vim.keymap.set("n", "<M-l>", function()
				harp_ui.nav_file(3)
			end)
			vim.keymap.set("n", "<M-u>", function()
				harp_ui.nav_file(4)
			end)
			vim.keymap.set("n", "<M-i>", function()
				harp_ui.nav_file(5)
			end)
			vim.keymap.set("n", "<M-o>", function()
				harp_ui.nav_file(6)
			end)
			vim.keymap.set("n", "<leader>ma", harp_mark.add_file, {})
			vim.keymap.set("n", "<leader>mm", harp_ui.toggle_quick_menu, {})
			vim.keymap.set("n", "<leader>mt", [[<CMD> Telescope harpoon marks<CR>]])
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
