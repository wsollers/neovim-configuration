local api = vim.api
local noRemapSilentOpts = { noremap = true, silent = true }
-- Open compiler
api.nvim_buf_set_keymap(0, 'n', '<F6>', "<cmd>CompilerOpen<cr>", noRemapSilentOpts)

-- Redo last selected option
--local fxReset = function ()
--  vim.cmd("CompilerStop") -- (Optional, to dispose all tasks before redo)
--  vim.cmd("CompilerRedo")
--end

--api.nvim_buf_set_keymap(0, 'n', '<S-F6>', fxReset, noRemapSilentOpts)
-- Toggle compiler results
api.nvim_buf_set_keymap(0, 'n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", noRemapSilentOpts)
