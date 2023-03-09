local opt = vim.opt -- for conciseness

-- line numbers
-- Relative line numbers (consider turning this on later.)
-- opt.relativenumber = true
-- Show line numbers.
opt.number = true

-- tabs & indentation
-- In INSERT mode: use the appropriate number of spaces to insert a <TAB>.
opt.expandtab = true
-- Distance between 2 tab stops.
opt.tabstop = 4 
-- Number of spaces to use for each step of (auto)indent.
opt.shiftwidth = 4 
-- autoindent is enabled by default so we don't really need to set it.
-- opt.autoindent = true

-- line wrapping
-- Default behavior is true (which I want) so I keep this commented out for now.
-- opt.wrap = false 

-- search settings
-- Ignore case in search patterns.
opt.ignorecase = true
-- Override the 'ignorecase' option if the search pattern contains upper case characters.
opt.smartcase = true

-- cursor line
-- Highlight the text line of the cursor.
opt.cursorline = true

-- appearance
-- Enables 24-bit RGB color in the TUI.
opt.termguicolors = true
-- Adjusts the default color groups for corresponding background type. Default value is "dark". Commented out!
-- opt.background = "dark"
-- When and how to draw the signcolumn.
opt.signcolumn = "yes"

-- backspace
-- Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
-- Default values are "indent, eol, start". Commented out!
-- opt.backspace = "indent,eol,start"

-- clipboard
-- Use the system clipboard
opt.clipboard = "unnamedplus"

-- split windows
-- When on, splitting a window will put the new window right of the current one
opt.splitright = true
-- When on, splitting a window will put the new window below the current one.
opt.splitbelow = true

-- Recognize "-" as part of a word. 
-- opt.iskeyword:append("-")

-- My old settings
-- Set the title of the window/tab.
opt.title = true


