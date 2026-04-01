-- Colortable reference
-- blue = "#7587A6",
-- darkred = "#875f5f",
-- teal = "#5f92a0",
-- gray = "#888a85",
-- bg = "#1f2329",
-- fg = "#9eaaaa",
-- purple = "#7b6d8a",
-- lightcyan = #bddcdc"
-- orange = "#A46321",
--
--
--
-- Theme: Drab (Darker & Muted)
local colors = {
	bg = "#1f2329", -- New deeper background
	fg = "#888a85", -- Muted gray for normal text
	bright_fg = "#eeeeec", -- Kept for bold keywords/headers
	gray = "#555753", -- Darker gray for inactive elements
	yellow = "#e5f0ab",
	darkred = "#875f5f",
	dark_gray = "#444444",
	comment = "#5c677a", -- Dimmed slightly to match new FG
	cursor_line = "#1b1f24", -- Slightly lighter than BG to be visible
	selection = "#353b45",
	accent = "#cccccc", -- Constant / Blue-ish
	keyword = "#875f5f", -- Muted Red
	string = "#9eb3ba", -- Muted Teal/Gray
	operator = "#c1D951", -- Lime-ish
	-- operator = "#ffffff",
	error = "#cc0000",
	warning = "#C5A837",
	info = "#88959b",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "darker-drab"

local hl = vim.api.nvim_set_hl

-- Core UI
hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
hl(0, "NonText", { fg = "#2c3032" })
hl(0, "NormalFloat", { fg = colors.fg, bg = "#181a1f" }) -- Slightly darker for popups
hl(0, "FloatBorder", { fg = colors.dark_gray, bg = colors.bg })
hl(0, "CursorLine", { bg = colors.cursor_line })
hl(0, "CursorLineNr", { fg = "Yellow" })
hl(0, "Directory", { fg = "#ffffff", bold = true })
hl(0, "EndOfBuffer", { fg = colors.dark_gray })
hl(0, "Search", { fg = "none", bg = "#535C69" })
hl(0, "IncSearch", { fg = "none", bg = "#535C69" })
hl(0, "LineNr", { fg = "#4b4d49" }) -- Visible but subtle line numbers
hl(0, "MatchParen", { fg = "#ffffff", bg = "#1100AA" })
hl(0, "Visual", { bg = colors.selection })
hl(0, "Search", { fg = "NONE", bg = "#3e4451" })
hl(0, "VertSplit", { fg = "#101214" })
hl(0, "StatusLine", { fg = colors.fg, bg = "#181a1f" })

-- Syntax
hl(0, "Comment", { fg = colors.comment, italic = true })
hl(0, "Constant", { fg = colors.accent })
hl(0, "String", { fg = colors.string })
hl(0, "Number", { fg = "#cd9965" })
hl(0, "Identifier", { fg = colors.fg }) -- Matches normal text
hl(0, "Function", { fg = colors.fg }) -- Bright for emphasis
hl(0, "Statement", { fg = colors.bright_fg, bold = true }) -- Bright for emphasis
hl(0, "Special", { fg = colors.fg })
-- hl(0, "Keyword", { fg = "#7b6d8a" }
-- hl(0, "Keyword", { fg = "#eeeeee", bold = true }) -- Bright for emphasis
-- hl(0, "Keyword", { fg = colors.yellow }) -- Bright for emphasis
hl(0, "Keyword", { fg = colors.keyword }) -- Bright for emphasis
hl(0, "Operator", { fg = colors.operator })
hl(0, "PreProc", { fg = colors.gray })
hl(0, "Type", { fg = colors.fg })

-- Modern TreeSitter Groups
hl(0, "@variable", { fg = colors.fg })
hl(0, "@variable.builtin", { fg = colors.accent })
hl(0, "@parameter", { fg = "#7a7c78" }) -- Even darker gray for parameters
hl(0, "@property", { fg = colors.accent })
hl(0, "@field", { fg = colors.fg })
hl(0, "@punctuation", { fg = colors.gray }) -- Muted brackets/commas
hl(0, "@tag", { fg = colors.bright_fg, bold = true })
hl(0, "@tag.delimiter", { fg = colors.gray })
hl(0, "@tag.attribute", { fg = colors.darkred })

-- Diagnostics
hl(0, "DiagnosticError", { fg = "#82505E", bg = "#26292c" })
hl(0, "DiagnosticWarn", { fg = colors.warning, bg = "#26292c" })
hl(0, "DiagnosticInfo", { fg = colors.info, bg = "#26292c" })
hl(0, "DiagnosticHint", { fg = colors.info, bg = "#26292c" })

-- Plugins
hl(0, "NvimTreeNormal", { bg = "#1b1f24", fg = colors.fg })
hl(0, "NvimTreeRootFolder", { fg = colors.accent })
hl(0, "NvimTreeWinSeparator", { fg = colors.bg, bg = colors.bg })
hl(0, "GitSignsAdd", { fg = "#80b083" })
hl(0, "GitSignsChange", { fg = "Turquoise" })
hl(0, "GitSignsDelete", { fg = "#c87779" })

-- Modern TreeSitter Groups (The "Neovim Way")
-- These will apply to HTML, Handlebars, JSX, etc.
-- hl(0, "@tag", { fg = "#ffffff" }) -- <div>, <body>
hl(0, "@tag", { fg = "#888a85" }) -- <div>, <body>
-- hl(0, "@tag", { fg = "#999083", bold = true }) -- <div>, <body>
hl(0, "@tag.delimiter", { fg = "#888a85" }) -- <, >, />
hl(0, "@tag.attribute", { fg = "#875f5f" }) -- class, id, href
hl(0, "@tag.builtin", { fg = "#ffffff", bold = true }) -- standard tags
hl(0, "@text.uri", { fg = "#729fcf", underline = true }) -- links inside tags

-- Expanded CSS/SCSS within HTML
hl(0, "@property.css", { fg = "#d3d7cf" }) -- color, margin
hl(0, "@type.css", { fg = "#bddcdc" }) -- .class-name
hl(0, "@string.css", { fg = "#9eaaaa" }) -- "serif", "url(...)"

-- JavaScript/JSON (often found in HTML script tags)
hl(0, "@property.json", { fg = "#5f92a0" }) -- keys in JSON
hl(0, "@string.json", { fg = "#9eaaaa" }) -- values in JSON

-- --- Markdown & MDX Highlights ---
-- Headers: Incremental brightness/boldness for hierarchy
hl(0, "@text.title", { fg = colors.bright_fg, bold = true }) -- Legacy TS
hl(0, "@markup.heading", { fg = colors.bright_fg, bold = true }) -- Modern TS
hl(0, "markdownH1", { fg = colors.bright_fg, bold = true })
hl(0, "markdownH2", { fg = colors.accent, bold = true })
hl(0, "markdownH3", { fg = colors.accent })

-- Inline Code & Code Blocks
hl(0, "@markup.raw", { fg = colors.string, bg = "#252a31" }) -- `code`
hl(0, "markdownCode", { fg = colors.string })
hl(0, "markdownCodeBlock", { fg = colors.fg })
hl(0, "markdownCodeDelimiter", { fg = colors.gray }) -- The ```

-- Links and URLs
hl(0, "@markup.link.label", { fg = colors.yellow }) -- [Label]
hl(0, "@markup.link.url", { fg = colors.info, underline = true }) -- (url)
hl(0, "markdownLinkText", { fg = colors.yellow })
hl(0, "markdownUrl", { fg = colors.info, underline = true })

-- List Markers and Blockquotes
hl(0, "@markup.list", { fg = colors.operator }) -- -, *, 1.
hl(0, "@markup.quote", { fg = colors.comment, italic = true }) -- > Quote
hl(0, "markdownListMarker", { fg = colors.operator })

-- Bold and Italic
hl(0, "@markup.italic", { italic = true })
hl(0, "@markup.strong", { bold = true })

-- --- MDX Specific (JSX in Markdown) ---
-- This uses your existing @tag highlights but ensures they pop in MDX
hl(0, "@tag.mdx", { fg = colors.keyword })
hl(0, "@tag.delimiter.mdx", { fg = colors.gray })
hl(0, "@tag.attribute.mdx", { fg = colors.darkred, italic = true })
