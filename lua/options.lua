require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--

local opt = vim.opt

-- Tabs / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '80'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 11
opt.completeopt = "menuone,noinsert,noselect"

-- Add transparency where desired
vim.cmd([[
	hi Normal guibg=NONE ctermbg=NONE
	hi NormalNC guibg=NONE ctermbg=NONE
	hi NormalSB guibg=NONE ctermbg=NONE
	hi NormalFloat guibg=NONE ctermbg=NONE
	hi FloatBorder guibg=NONE ctermbg=NONE
	hi SignColumn guibg=NONE ctermbg=NONE
]])

-- Behavior
opt.hidden = true -- Hide buffer when abandoned
opt.errorbells = false
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.clipboard:append("unnamedplus") -- synchronize nvim clipboard with system clipboard
opt.modifiable = true
opt.encoding = "UTF-8"
opt.inccommand = "split" -- add window while using commands

-- Scroll off

-- Smooth and minimal viewport adjustment
vim.cmd([[
  augroup MinimalScrolloffPadding
    autocmd!
    autocmd BufWinEnter,WinScrolled,CursorMoved * lua MinimalViewportPadding()
  augroup END
]])

function MinimalViewportPadding()
  local scrolloff = vim.o.scrolloff
  local win_height = vim.fn.winheight(0)
  local buf_line_count = vim.fn.line('$')
  local cursor_line = vim.fn.line('.')

  -- Calculate the number of visible lines below the cursor
  local lines_below = buf_line_count - cursor_line
  if lines_below < scrolloff then
    -- Reduce padding dynamically based on remaining lines
    local dynamic_padding = math.min(scrolloff, scrolloff - lines_below)
    local current_topline = vim.fn.line('w0')
    local target_topline = math.max(1, buf_line_count - win_height + dynamic_padding)

    if current_topline ~= target_topline then
      vim.fn.winrestview({ topline = target_topline })
    end
  end
end
