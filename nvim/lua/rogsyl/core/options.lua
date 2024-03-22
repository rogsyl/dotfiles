local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- Set hightlight on search
--opt.hlsearch = false

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.signcolumn = "yes"

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance

-- turn on termguicolors for catppuccin colorscheme to work
-- (true color terminal needed)
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
--opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.undodir = os.getenv("HOME") .. "/.local/neovim/undodir"
opt.undofile = true

opt.colorcolumn = "80"

opt.mouse = "a"

--opt.shortmess:append("IsF")

-- tur off swap file
opt.swapfile = false

opt.scrolloff = 5
opt.scrolljump = -50
