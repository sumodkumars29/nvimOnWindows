return {
	"neovim/nvim-lspconfig",
	config = function()
		-- for lua
		-- vim.lsp.config("lua_ls", {
		-- 	cmd = { "lua-language-server" },
		-- 	filetypes = { "lua" },
		-- 	settings = {
		-- 		Lua = {
		-- 			diagnostics = {
		-- 				globals = { "vim" },
		-- 			},
		-- 		},
		-- 	},
		-- })

		-- for AutoHotKey v2
		vim.lsp.config("autohotkey_lsp", {
			cmd = {
				"node",
				"C:\\Users\\S10DIGITAL\\AppData\\Local\\lsp\\ahk_lsp\\vscode-autohotkey2-lsp-2.8.2\\extension\\server\\dist\\server.js",
				"--stdio",
			},
			filetypes = { "autohotkey" },
			settings = {
				AutoHotKey2 = {
					InterpreterPath = "C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey64.exe",
				},
			},
		})
	end,
}

-- local util = require("lspconfig.util")

-- return {
-- 	"neovim/nvim-lspconfig",
-- 	config = function()
-- 		vim.lsp.config("lua_ls", {
-- 			cmd = { "lua-language-server" },
-- 			filetypes = { "lua" },
--
-- 			-- this is where the change starts
-- 			root_dir = function(fname)
-- 				local config_dir = vim.fn.stdpath("config")
--
-- 				-- if editing Neovim config, force config as root
-- 				if fname:find(config_dir, 1, true) then
-- 					return config_dir
-- 				end
--
-- 				-- Otherwise, use normal project root detection
-- 				return vim.fs.root(fname, {
-- 					".luarc.json",
-- 					".git",
-- 					"init.lua",
-- 				}) or vim.fn.getcwd()
-- 			end,
--
-- 			settings = {
-- 				Lua = {
-- 					diagnostics = {
-- 						globals = { "vim" },
-- 					},
-- 					workspace = {
-- 						library = vim.api.nvim_get_runtime_file("", true),
-- 						checkThirdParty = false,
-- 					},
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
