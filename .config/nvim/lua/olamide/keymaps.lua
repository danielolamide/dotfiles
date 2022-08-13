local opts = { noremap = true, silent = true }
local term_opts = { silent = true }


--shorten function name
local keymap = vim.api.nvim_set_keymap
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '


--window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)


keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


--move line up and down
keymap('n', '˚', ':m .-2<CR>==', opts)
keymap('n', '∆', ':m .+1<CR>==', opts)
keymap('v', '˚', ':m .-2<CR>==', opts)
keymap('v', '∆', ':m .+1<CR>==', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)


--Telescope
keymap("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

--Bufferline
keymap('n', "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap('n', "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap ('n', "<S-x>", ":bdelete<CR>", opts)
