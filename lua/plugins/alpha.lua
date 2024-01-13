return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                          ]],
			[[            _     _ _     ]],
			[[   _       | |   (_) |    ]],
			[[ _| |_ ___ | |__  _| |    ]],
			[[(_   _) _ \|  _ \| | |    ]],
			[[  | || |_| | |_) ) | |  _ ]],
			[[   \__)___/|____/|_|\_)(_)]],
			[[                          ]],
			[[                          ]],
		}
    alpha.setup(dashboard.opts)
	end,
}
