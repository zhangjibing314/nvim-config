local dap = require("dap")

--配置调试器
dap.adapters = {
	gdb = {
		type = "executable",
		command = "gdb",
		args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
	}
}
--针对不同源文件的调试配置
dap.configurations = {
	c = {
		{
			name = "debug c on gdg",
			type = "gdb",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = "${workspaceFolder}",
			stopAtBeginningOfMainSubprogram = false,
		}
	},
	cpp = {
		{
			name = "debug cpp on gdg",
			type = "gdb",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = "${workspaceFolder}",
			stopAtBeginningOfMainSubprogram = false,
		}
	}
}
