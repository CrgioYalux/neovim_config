local inspect = require('azul.plugins.inspect')
local nnoremap  = require('azul.keymap').nnoremap
local vnoremap = require('azul.keymap').vnoremap
local xnoremap = require('azul.keymap').xnoremap

-- print(inspect(nnoremap))

-- Go to Default Explorer
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Resize with arrows
nnoremap("<C-Up>", ":resize -2<CR>")
nnoremap("<C-Down>", ":resize +2<CR>")
nnoremap("<C-Left>", ":vertical resize -2<CR>")
nnoremap("<C-Right>", ":vertical resize +2<CR>")

-- Move between NvimTree and File
nnoremap("<C-h>", "<cmd>NvimTreeFocus<CR>")
nnoremap("<C-l>", "<cmd>b#<CR>")

--- Navigate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")

nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>w", "<cmd>w!<CR>")
nnoremap("<leader>q", "<cmd>q!<CR>")
nnoremap("<leader>c", "<cmd>bdelete!<CR>")

-- Move text up and down
-- nnoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
-- nnoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

-- Visual --
-- Stay in indent mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Move text up and down
vnoremap("<A-j>", ":m .+1<CR>==")
vnoremap("<A-k>", ":m .-2<CR>==")

-- Copy the clipboard deleting the selected text
vnoremap("p", '"_dP') 

-- Visual Block --
-- Move text up and down
xnoremap("J", ":move '>+1<CR>gv-gv")
xnoremap("K", ":move '<-2<CR>gv-gv")
xnoremap("<A-j>", ":move '>+1<CR>gv-gv")
xnoremap("<A-k>", ":move '<-2<CR>gv-gv")

-- What is what
-- <leader> is a custom key that is set by the user 
-- <cmd> is `:` (`shift + ñ` in my keyword)  
-- <Cr> is `enter`
-- <A> is Alt
-- <C> is Ctrl 
