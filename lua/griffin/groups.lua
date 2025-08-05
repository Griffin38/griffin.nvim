local M = {}

local colors = require("griffin.palette")

M.setup = function()
	return {

		-- Standard
		ColorColumn = { fg = colors.ui_line },
		Conceal = { link = "ColorColumn" },
		-- Cursor= ''
		-- CursorIM= ''
		-- CursorColumn= ''
		-- CursorLine= ''
		CursorLineNr = { fg = colors.ui_accent_red },
		Directory = { fg = colors.ui_accent_darkblue },
		DiffAdd = { fg = colors.ui_info },
		DiffChange = { fg = colors.ui_accent_info },
		DiffDelete = { fg = colors.ui_accent_warning },
		-- DiffText= ''
		ErrorMsg = { fg = colors.ui_accent_warning, undercurl = true },
		VertSplit = { fg = colors.ui_line },
		FloatBorder = { fg = colors.ui_accent_darkblue },
		-- Folded= ''
		-- FoldColumn= ''
		-- SignColumn= ''
		IncSearch = { fg = colors.editor_foreground, bg = colors.ui_accent_yellow2 },
		LineNr = { fg = colors.ui_accent_red },
		LineNrAbove = { fg = colors.ui_shaded },
		LineNrBelow = { fg = colors.ui_shaded },
		MatchParen = { bold = true, underline = true, sp = colors.ui_accent_yellow1 },
		-- ModeMsg= ''
		-- MoreMsg= ''
		-- NonText= ''
		Normal = { fg = colors.editor_foreground, bg = colors.editor_background },
		PMenu = { fg = colors.ui_foreground, bg = colors.ui_background },
		PMenuSel = { fg = colors.ui_foreground, bg = colors.ui_line },
		PMenuSbar = { fg = colors.ui_accent_darkblue },
		PMenuThumb = { fg = colors.ui_foreground },
		Question = { fg = colors.ui_accent_red2 },
		Search = { fg = colors.editor_foreground, bg = colors.ui_accent_yellow2 },
		-- SpecialKey= ''
		-- SpellBad= ''
		-- SpellLocal= ''
		-- SpellCap= ''
		-- SpellRare= ''
		StatusLine = { fg = colors.ui_line },
		-- StatusLineNC= ''
		-- TabLine= ''
		-- TabLineFill= ''
		-- TabLineSel= ''
		Title = { fg = colors.editor_foreground },
		Terminal = { fg = colors.editor_foreground, bg = colors.ui_line },
		Visual = { bg = colors.ui_line },
		-- VisualNOS= ''
		WarningMsg = { fg = colors.ui_accent_warning, bg = colors.ui_accent_black },
		WildMenu = { bg = colors.ui_line },
		QuickFixLine = { fg = colors.ui_accent_blue3, undercurl = true, sp = colors.ui_accent_blue3 },
		DiagnosticError = { fg = colors.ui_accent_warning, undercurl = true, sp = colors.ui_accent_warning },
		Comment = { fg = colors.ui_line },
		Constant = { fg = colors.ui_accent_orange2 },
		String = { fg = colors.ui_accent_green },
		Character = { link = "String" },
		Boolean = { fg = colors.ui_accent_purple },
		Number = { link = "Boolean" },
		Float = { link = "Boolean" },
		Identifier = { fg = colors.editor_foreground },
		Function = { fg = colors.ui_accent_darkblue },
		Statement = { fg = colors.ui_accent_orange2 },
		Conditional = { fg = colors.ui_accent_blue1 },
		Label = { fg = colors.ui_accent_red2 },
		Repeat = { link = "Label" },
		Operator = { fg = colors.ui_accent_blue1 },
		Keyword = { fg = colors.ui_accent_red },
		Exception = { fg = colors.ui_accent_orange2 },
		PreProc = { fg = colors.ui_accent_yellow1 },
		Include = { link = "PreProc" },
		Define = { link = "PreProc" },
		Macro = { link = "PreProc" },
		PreCondit = { link = "PreProc" },
		Type = { fg = colors.ui_accent_yellow1 },
		StorageClass = { link = "Type" },
		Structure = { link = "Type" },
		TypeDef = { link = "Type" },
		Special = { fg = colors.ui_accent_orange },
		Variable = { link = "Special" },
		SpecialChar = { link = "Special" },
		Tag = { fg = colors.ui_accent_blue1 },
		Delimiter = { link = "Tag" },
		SpecialComment = { fg = colors.ui_shaded, italic = true },
		Debug = { fg = colors.ui_accent_red2 },
		Underlined = { fg = colors.ui_shaded, underline = true },
		Ignore = { fg = colors.ui_shaded },
		Error = { fg = colors.ui_accent_warning },
		Todo = { fg = colors.editor_foreground },

		--Ruby

		["@keyword.function.ruby"] = { fg = colors.ui_accent_lightblue },
		["@keyword.return.ruby"] = { fg = colors.ui_accent_lightblue },
		["@variable.builtin.ruby"] = { fg = colors.ui_accent_blue1 },
		["@variable.parameter.ruby"] = { fg = colors.ui_accent_orange },
		["@lsp.type.parameter.ruby"] = { fg = colors.ui_accent_orange2 },
		["@operator.ruby"] = { fg = colors.ui_accent_purple },
		["@label.ruby"] = { fg = colors.ui_accent_blue1 },
		["@punctuation.bracket.ruby"] = { fg = colors.ui_accent_yellow1 },
		["@punctuation.special.ruby"] = { fg = colors.ui_accent_yellow1 },

		erubyBlock = { fg = colors.ui_accent_lightblue },
		erubyKeywordAsMethod = { fg = colors.ui_accent_lightblue },
		erubyExpression = { link = "erubyKeywordAsMethod" },
		rubySymbol = { fg = colors.ui_accent_orange2 },

		--HTML

		htmlTag = { fg = colors.ui_accent_blue1 },
		htmlTagN = { link = "htmlTag" },
		htmlStartTag = { link = "htmlTag" },
		htmlEndTag = { link = "htmlTag" },
		htmlTagName = { fg = colors.ui_accent_red },
		htmlArg = { fg = colors.ui_accent_purple },

		--VUE
		["@tag.vue"] = { link = "htmlTagName" },

		--Treesitter
		-- @variable                       various variable names
		["@variable"] = { fg = colors.editor_foreground },
		-- @variable.builtin (Special)     built-in variable names (e.g. `this`, `self`)
		["@variable.builtin"] = { fg = colors.ui_accent_red2 },
		-- @variable.parameter             parameters of a function
		["@variable.parameter"] = { fg = colors.ui_accent_orange },
		-- @variable.parameter.builtin     special parameters (e.g. `_`, `it`)
		-- @variable.member                object and struct fields
		["@variable.member"] = { fg = colors.ui_accent_blue1 },
		-- @constant (Constant)              constant identifiers
		-- @constant.builtin       built-in constant values
		-- @constant.macro         constants defined by the preprocessor
		--
		-- @module (Structure)      modules or namespaces
		-- @module.builtin         built-in modules or namespaces
		-- @label                  `GOTO` and other labels (e.g. `label=` in C), including heredoc labels
		--
		-- @string                 string literals
		-- @string.documentation   string documenting code (e.g. Python docstrings)
		-- @string.regexp          regular expressions
		["@string.regexp"] = { fg = colors.ui_accent_green },
		-- @string.escape          escape sequences
		["@string.escape"] = { fg = colors.ui_accent_green, bold = true },
		-- @string.special         other special strings (e.g. dates)
		-- @string.special.symbol  symbols or atoms
		["@string.special.symbol"] = { fg = colors.ui_accent_orange2 },
		-- @string.special.path    filenames
		-- @string.special.url (Underlined)     URIs (e.g. hyperlinks)
		["@string.special.url"] = { fg = colors.ui_accent_blue2, underline = true },
		-- @character              character literals
		-- @character.special      special characters (e.g. wildcards)
		--
		-- @boolean                boolean literals
		-- @number                 numeric literals
		-- @number.float           floating-point number literals
		--
		-- @type                   type or class definitions and annotations
		-- @type.builtin           built-in types
		-- @type.definition        identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
		--
		-- @attribute              attribute annotations (e.g. Python decorators, Rust lifetimes)
		["@attribute"] = { link = "Constant" },
		-- @attribute.builtin      builtin annotations (e.g. `@property` in Python)
		-- @property               the key in key/value pairs
		--
		-- @function               function definitions
		-- @function.builtin       built-in functions
		-- @function.call          function calls
		-- @function.macro         preprocessor macros
		--
		-- @function.method        method definitions
		-- @function.method.call   method calls
		--
		-- @constructor            constructor calls and definitions
		["@constructor"] = { fg = colors.ui_accent_blue1 },
		["@constructor.lua"] = { fg = colors.ui_accent_blue1 },
		-- @operator               symbolic operators (e.g. `+`, `*`)
		["@operator"] = { link = "Operator" },
		--
		-- @keyword                keywords not fitting into specific categories
		-- @keyword.coroutine      keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		-- @keyword.function       keywords that define a function (e.g. `func` in Go, `def` in Python)
		-- @keyword.operator       operators that are English words (e.g. `and`, `or`)
		["@keyword.operator"] = { fg = colors.ui_accent_blue1 },
		-- @keyword.import         keywords for including modules (e.g. `import`, `from` in Python)
		["@keyword.import"] = { link = "PreProc" },
		-- @keyword.type           keywords defining composite types (e.g. `struct`, `enum`)
		-- @keyword.modifier       keywords defining type modifiers (e.g. `const`, `static`, `public`)
		-- @keyword.repeat         keywords related to loops (e.g. `for`, `while`)
		-- @keyword.return         keywords like `return` and `yield`
		["@keyword.return"] = { fg = colors.ui_accent_red },
		-- @keyword.debug          keywords related to debugging
		-- @keyword.exception      keywords related to exceptions (e.g. `throw`, `catch`)
		["@keyword.exception"] = { fg = colors.ui_accent_purple },
		--
		-- @keyword.conditional         keywords related to conditionals (e.g. `if`, `else`)
		-- @keyword.conditional.ternary ternary operator (e.g. `?`, `=`)
		--
		-- @keyword.directive           various preprocessor directives and shebangs
		-- @keyword.directive.define    preprocessor definition directives
		--
		-- @punctuation.delimiter  delimiters (e.g. `;`, `.`, `,`)
		["@punctuation.delimiter"] = { fg = colors.ui_accent_red },
		-- @punctuation.bracket    brackets (e.g. `()`, `{}`, `[]`)
		["@punctuation.bracket"] = { fg = colors.ui_accent_yellow2 },
		-- @punctuation.special    special symbols (e.g. `{}` in string interpolation)
		["@punctuation.special"] = { fg = colors.ui_accent_blue1 },
		--
		-- @comment                line and block comments
		-- @comment.documentation  comments documenting code
		--
		-- @comment.error          error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
		-- '@comment.error' = 'editor_foreground ui_accent_red b'
		-- @comment.warning        warning-tye comments (e.g. `WARNING`, `FIX`, `HACK`)
		-- '@comment.warning' = 'editor_foreground ui_accent_warning b'
		-- @comment.todo           todo-tye comments (e.g. `TODO`, `WIP`)
		-- @comment.note           note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
		["@comment.note"] = { fg = colors.ui_shaded, underline = true },
		--
		-- @diff.plus              added text (for diff files)
		["@diff.plus"] = { fg = colors.ui_accent_info },
		-- @diff.minus             deleted text (for diff files)
		["@diff.minus"] = { fg = colors.ui_accent_warning },
		-- @diff.delta             changed text (for diff files)
		["@diff.delta"] = { fg = colors.ui_accent_yellow2 },
		--
		-- @tag                    XML-style tag names (e.g. in XML, HTML, etc.)
		-- @tag.builtin            XML-style tag names (e.g. HTML5 tags)
		-- @tag.attribute          XML-style tag attributes
		["@tag.attribute"] = { fg = colors.ui_accent_purple },
		-- @tag.delimiter          XML-style tag delimiters
		["@tag.delimiter"] = { fg = colors.ui_accent_purple },

		-- Snacks
		SnacksPickerInputBorder = { fg = colors.ui_accent_orange },
		SnacksPickerInputTitle = { fg = colors.ui_accent_blue1 },
		SnacksPickerBoxTitle = { fg = colors.ui_accent_purple },
		SnacksPickerSelected = { fg = colors.editor_foreground, bg = colors.ui_accent_orange2 },
		SnacksPickerToggle = { link = "SnacksProfilerBadgeInfo" },
		SnacksPickerPickWinCurrent = { fg = colors.editor_foreground, bg = colors.ui_accent_yellow1 },
		SnacksPickerPickWin = { fg = colors.editor_foreground, bg = colors.ui_accent_darkblue },

		-- Gitsigns
		GitSignsAdd = { fg = colors.ui_accent_info },
		GitSignsChange = { fg = colors.ui_accent_yellow2 },
		GitSignsDelete = { fg = colors.ui_accent_warning },

		-- Telescope
		TelescopeBorder = { fg = colors.ui_accent_darkblue },
		TelescopeTitle = { fg = colors.ui_accent_blue1 },
		TelescopeSelection = { fg = colors.ui_foreground, bg = colors.ui_accent_blue1 },
		TelescopeSelectionCaret = { link = "CursorLineNr" },
		TelescopeResultsClass = { link = "Structure" },
		TelescopeResultsStruct = { link = "Structure" },
		TelescopeResultsField = { link = "@field" },
		TelescopeResultsMethod = { link = "Function" },
		TelescopeResultsVariable = { link = "@variable" },

		-- Floaterm
		FloatermBorder = { fg = colors.ui_accent_darkblue },

		-- Cmp
		CmpDocumentation = { link = "NormalFloat" },
		CmpDocumentationBorder = { link = "FloatBorder" },
		CmpCompletion = { link = "Pmenu" },
		CmpCompletionSel = { link = "PmenuSel" },
		CmpCompletionBorder = { fg = colors.ui_accent_darkblue },
		CmpCompletionThumb = { link = "PmenuThumb" },
		CmpCompletionSbar = { link = "PmenuSbar" },
		CmpItemAbbr = { fg = colors.ui_foreground },
		CmpItemAbbrDeprecated = { fg = colors.ui_shaded },
		CmpItemAbbrMatch = { fg = colors.ui_accent_orange },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
		CmpItemKindDefault = { fg = colors.ui_accent_orange },
		CmpItemMenu = { fg = colors.ui_foreground },
		CmpGhostText = { fg = colors.ui_shaded },
		--
		CmpItemKindText = { fg = colors.ui_foreground },
		CmpItemKindMethod = { link = "@function.method" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindField = { link = "@variable.member" },
		CmpItemKindVariable = { fg = colors.ui_foreground },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindModule = { link = "@module" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { link = "Number" },
		CmpItemKindValue = { link = "String" },
		CmpItemKindEnum = { link = "Type" },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindSnippet = { link = "Special" },
		CmpItemKindColor = { link = "Special" },
		CmpItemKindFile = { link = "Directory" },
		CmpItemKindReference = { link = "Special" },
		CmpItemKindFolder = { link = "Directory" },
		CmpItemKindEnumMember = { link = "Constant" },
		CmpItemKindConstant = { link = "Constant" },
		CmpItemKindStruct = { link = "Type" },
		CmpItemKindEvent = { link = "Type" },
		CmpItemKindOperator = { link = "Operator" },
		CmpItemKindTypeParameter = { link = "Type" },
		CmpItemKindCopilot = { link = "String" },
		--
		-- barbar
		--
		BufferCurrent = { fg = colors.ui_accent_orange },
		BufferInactiveMod = { link = "BufferCurrentMod" },
		BufferTabpageFill = { bg = colors.editor_background },
		BufferCurrentMod = { fg = colors.ui_accent_yellow1 },
		--
		-- NEOTEST
		--   # NeotestAdapterName = { fg = theme.syn.special3, },
		--   #       NeotestDir = { fg = theme.syn.fun, },
		--   #       NeotestExpandMarker = { fg = theme.syn.punct, bold = true, },
		--   #       NeotestFailed = { fg = theme.diag.error },
		--   #       NeotestFile = { fg = theme.syn.fun, },
		--   #       NeotestFocused = { bold = true, underline = true, },
		--   #       NeotestIndent = { fg = theme.ui.special, bold = true, },
		--   #       NeotestMarked = { fg = theme.diag.warning, italic = true, },
		--   #       NeotestNamespace = { fg = theme.syn.fun, },
		--   #       NeotestPassed = { fg = theme.diag.ok },
		--   #       NeotestRunning = { fg = theme.vcs.changed, },
		--   #       NeotestWinSelect = { fg = theme.diag.hint },
		--   #       NeotestSkipped = { fg = theme.syn.special1 },
		--   #       NeotestTarget = { fg = theme.syn.special3 },
		--   #       NeotestTest = { fg = theme.ui.float.fg },
		--   #       NeotestUnknown = { fg = theme.syn.deprecated },
		--   #       NeotestWatching = { fg = theme.vcs.changed, },
		--
		--
	}
end

return M
