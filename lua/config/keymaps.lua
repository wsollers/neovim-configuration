local mapkey = require("util.keymapper").mapkey
--stuff

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

--Telescope Mappings
mapkey("<leader>fk", "Telescope keymaps", "n")
mapkey("<leader>fh", "Telescope help_tags", "n")
mapkey("<leader>ff", "Telescope find_files", "n")
mapkey("<leader>fg", "Telescope live_grep", "n")
mapkey("<leader>fb", "Telescope buffers", "n")

vim.keymap.set("n", "<leader>fd", "<cmd>Telescope dir live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pd", "<cmd>Telescope dir find_files<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<space>fb", ":Telescope file_browser<CR>", { noremap = true }
)

-- open file_browser with the path of the current buffer
--vim.api.nvim_set_keymap( "n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })


