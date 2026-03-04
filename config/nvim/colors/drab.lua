-- Theme: Drab

local colors = {
	bg = "NONE",
	fg = "#eeeeec",
	gray = "#888a85",
	yellow = "#e5f0ab",
	dark_gray = "#444444",
	comment = "#7585a3",
	-- comment = "#627785",
	cursor_line = "#2c3039",
	selection = "#252028",
	accent = "#5f92a0", -- Constant / Root Folder
	-- keyword = "#996576",
	-- keyword = "#875f5f",
	keyword = "#a86c78",
	string = "#9eaaaa",
	operator = "#c1D951",
	error = "#cc0000",
	warning = "#C5A837",
	info = "#88959b",
}

-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "drab"

local hl = vim.api.nvim_set_hl

-- Core UI
hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
hl(0, "NonText", { fg = "#2c3032" })
hl(0, "EndOfBuffer", { fg = colors.dark_gray })
hl(0, "CursorLine", { bg = colors.cursor_line })
hl(0, "CursorLineNr", { fg = "Yellow" })
hl(0, "Directory", { fg = "#ffffff", bold = true })
hl(0, "Visual", { bg = colors.selection })
hl(0, "Search", { fg = "none", bg = "#535C69" })
hl(0, "IncSearch", { fg = "none", bg = "#535C69" })
hl(0, "VertSplit", { fg = "#404040" })
hl(0, "StatusLine", { fg = "#2e3436", bg = "#293337" })
hl(0, "SignColumn", { bg = "NONE" })

-- Pmenu (Completion)
hl(0, "Pmenu", { fg = "#ffffff", bg = "NONE" })
hl(0, "PmenuSel", { fg = "#bddcdc", bg = "#1e2124" })
hl(0, "PmenuSbar", { bg = "#202020" })
hl(0, "PmenuThumb", { bg = "#363636" })

-- Syntax Highlighting
hl(0, "Comment", { fg = colors.comment })
hl(0, "Constant", { fg = colors.accent })
hl(0, "String", { fg = colors.string })
hl(0, "Number", { fg = "#cd9965" })
hl(0, "Identifier", { fg = "#ffffff" })
hl(0, "Function", { fg = colors.keyword })
hl(0, "Statement", { fg = "#ffffff", bold = true })
-- hl(0, "Keyword", { fg = "#736d99", bold = true })
hl(0, "Keyword", { fg = "#ffffff", bold = true })
-- hl(0, "Keyword", { fg = colors.yellow })
hl(0, "PreProc", { fg = "#ffffff" })
hl(0, "Type", { fg = "#ffffff" })
-- hl(0, "Type", { fg = colors.yellow })
hl(0, "Operator", { fg = colors.operator })
hl(0, "Special", { fg = "#ffffff" })
hl(0, "Error", { fg = colors.error })
hl(0, "ErrorMsg", { fg = colors.error })
hl(0, "Todo", { fg = "#bddcdc", bg = "NONE" })

-- Diagnostics
hl(0, "DiagnosticError", { fg = "#82505E", bg = "#26292c" })
hl(0, "DiagnosticWarn", { fg = colors.warning, bg = "#26292c" })
hl(0, "DiagnosticInfo", { fg = colors.info, bg = "#26292c" })
hl(0, "DiagnosticHint", { fg = colors.info, bg = "#26292c" })

-- Plugins (NvimTree & GitSigns)
hl(0, "NvimTreeRootFolder", { fg = colors.accent })
hl(0, "NvimTreeWinSeparator", { fg = "#2b2b2b" })
-- hl(0, "NvimTreeSpecialFile", { fg = "#ffffff" })
hl(0, "NvimTreeExecFile", { fg = "#ffffff" })
hl(0, "NvimTreeImageFile", { fg = "#C5A837" })
hl(0, "GitSignsAdd", { fg = "#406742" })
hl(0, "GitSignsChange", { fg = "Turquoise" })
hl(0, "GitSignsDelete", { fg = "#82505E" })

-- Language Specifics (HTML/CSS)
-- hl(0, "htmlTag", { fg = colors.gray })
-- hl(0, "htmlEndTag", { fg = colors.gray })
hl(0, "cssIdentifier", { fg = "#bddcdc" })
hl(0, "cssTagName", { fg = "#bddcdc" })

-- Standard HTML Groups (Legacy Support)
hl(0, "htmlTag", { fg = "#888a85" })
hl(0, "htmlEndTag", { fg = "#888a85" })
hl(0, "htmlTagName", { fg = "#ffffff" })
hl(0, "htmlSpecialTagName", { fg = "#babdb6" })
hl(0, "htmlArg", { fg = "#875f5f" })
hl(0, "htmlLink", { fg = "#729fcf", underline = true })
hl(0, "htmlTitle", { fg = "#aaaa77" })

-- Modern TreeSitter Groups (The "Neovim Way")
-- These will apply to HTML, Handlebars, JSX, etc.
hl(0, "@tag", { fg = "#ffffff", bold = true }) -- <div>, <body>
hl(0, "@tag.delimiter", { fg = "#888a85" }) -- <, >, />
hl(0, "@tag.attribute", { fg = "#a86c78" }) -- class, id, href
hl(0, "@tag.builtin", { fg = "#ffffff", bold = true }) -- standard tags
hl(0, "@text.uri", { fg = "#729fcf", underline = true }) -- links inside tags

-- Expanded CSS/SCSS within HTML
hl(0, "@property.css", { fg = "#d3d7cf" }) -- color, margin
hl(0, "@type.css", { fg = "#bddcdc" }) -- .class-name
hl(0, "@string.css", { fg = "#9eaaaa" }) -- "serif", "url(...)"

-- JavaScript/JSON (often found in HTML script tags)
hl(0, "@property.json", { fg = "#5f92a0" }) -- keys in JSON
hl(0, "@string.json", { fg = "#9eaaaa" }) -- values in JSON
