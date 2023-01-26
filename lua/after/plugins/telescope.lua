-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local builtin = require("telescope.builtin")

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		file_ignore_patterns = { "node_modules", ".git" },
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})

telescope.load_extension("fzf")

vim.keymap.set("n", ";f", function()
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end)
vim.keymap.set("n", ";F", function()
	builtin.find_files({
		no_ignore = true,
		hidden = true,
	})
end)

vim.keymap.set("n", "<leader>fo", function()
	builtin.oldfiles()
end, { desc = "test" })

vim.keymap.set("n", "<leader>fs", function()
	builtin.live_grep()
end)

vim.keymap.set("n", "<leader>fw", function()
	builtin.grep_string()
end)

vim.keymap.set("n", "<leader>fb", function()
	builtin.buffers()
end)

vim.keymap.set("n", "<leader>fh", function()
	builtin.help_tags()
end)

vim.keymap.set("n", "<leader>fk", function()
	builtin.keymaps()
end, { desc = "[F]ind [K]eymaps" })

vim.keymap.set("n", ";t", function()
	builtin.help_tags()
end)

vim.keymap.set("n", ";;", function()
	builtin.resume()
end)

vim.keymap.set("n", ";e", function()
	builtin.diagnostics()
end)
