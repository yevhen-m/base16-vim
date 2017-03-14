" Base16 Eighties (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
" let g:base16_shell_path=base16-builder/output/shell/
if exists("g:base16_shell_script_path")
  execute "silent !/bin/sh ".g:base16_shell_script_path
endif

" Terminal color definitions
let s:black          = "00"
let s:blue           = "04"
let s:bright_white   = "21"
let s:brown          = "17"
let s:cyan           = "06"
let s:dark_gray      = "18"
let s:green          = "02"
let s:light_gray     = "20"
let s:magenta        = "05"
let s:mid_gray       = "08"
let s:orange         = "16"
let s:red            = "01"
let s:semi_dark_gray = "19"
let s:white          = "07"
let s:yellow         = "03"

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-eighties"

" Highlighting function
fun <sid>hi(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim editor colors
call <sid>hi("Bold",         "",               "",               "bold")
call <sid>hi("Debug",        s:red,            "",               "")
call <sid>hi("Directory",    s:blue,           "",               "")
call <sid>hi("ErrorMsg",     s:red,            s:black,          "bold")
call <sid>hi("Exception",    s:red,            "",               "")
call <sid>hi("FoldColumn",   "",               s:dark_gray,      "")
call <sid>hi("Folded",       s:mid_gray,       s:dark_gray,      "")
call <sid>hi("IncSearch",    s:semi_dark_gray, s:yellow,         "bold")
call <sid>hi("Italic",       "",               "",               "none")
call <sid>hi("Macro",        s:red,            "",               "")
call <sid>hi("MatchParen",   s:black,          s:mid_gray,       "")
call <sid>hi("ModeMsg",      s:green,          "",               "")
call <sid>hi("MoreMsg",      s:green,          "",               "")
call <sid>hi("Question",     s:blue,           "",               "")
call <sid>hi("Search",       s:yellow,         s:semi_dark_gray, "bold")
call <sid>hi("SpecialKey",   s:mid_gray,       "",               "")
call <sid>hi("TooLong",      s:red,            "",               "")
call <sid>hi("Underlined",   s:red,            "",               "")
call <sid>hi("Visual",       "",               s:semi_dark_gray, "")
call <sid>hi("VisualNOS",    s:red,            "",               "")
call <sid>hi("WarningMsg",   s:red,            "",               "bold")
call <sid>hi("WildMenu",     s:red,            "",               "")
call <sid>hi("Title",        s:blue,           "",               "none")
call <sid>hi("Conceal",      s:semi_dark_gray, s:black,          "")
call <sid>hi("Cursor",       s:black,          s:white,          "")
call <sid>hi("NonText",      s:mid_gray,       "",               "")
call <sid>hi("Normal",       s:white,          s:black,          "")
call <sid>hi("LineNr",       s:mid_gray,       s:dark_gray,      "")
call <sid>hi("SignColumn",   s:mid_gray,       s:dark_gray,      "")
call <sid>hi("SpecialKey",   s:mid_gray,       "",               "")
call <sid>hi("StatusLine",   s:light_gray,     s:semi_dark_gray, "none")
call <sid>hi("StatusLineNC", s:mid_gray,       s:dark_gray,      "none")
call <sid>hi("VertSplit",    s:semi_dark_gray, "none",           "none")
call <sid>hi("ColorColumn",  "",               s:dark_gray,      "none")
call <sid>hi("CursorColumn", "",               s:dark_gray,      "none")
call <sid>hi("CursorLine",   "",               s:dark_gray,      "none")
call <sid>hi("CursorLineNr", s:mid_gray,       s:dark_gray,      "none")
call <sid>hi("PMenu",        s:light_gray,     s:dark_gray,      "none")
call <sid>hi("PMenuSel",     s:dark_gray,      s:light_gray,     "")
call <sid>hi("TabLine",      s:mid_gray,       s:dark_gray,      "none")
call <sid>hi("TabLineFill",  s:mid_gray,       s:dark_gray,      "none")
call <sid>hi("TabLineSel",   s:green,          s:dark_gray,      "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:orange,   "",          "")
call <sid>hi("Character",    s:red,      "",          "")
call <sid>hi("Comment",      s:mid_gray, "",          "")
call <sid>hi("Conditional",  s:magenta,  "",          "")
call <sid>hi("Constant",     s:orange,   "",          "")
call <sid>hi("Define",       s:magenta,  "",          "none")
call <sid>hi("Delimiter",    s:brown,    "",          "")
call <sid>hi("Float",        s:orange,   "",          "")
call <sid>hi("Function",     s:blue,     "",          "")
call <sid>hi("Identifier",   s:red,      "",          "none")
call <sid>hi("Include",      s:blue,     "",          "")
call <sid>hi("Keyword",      s:magenta,  "",          "")
call <sid>hi("Label",        s:yellow,   "",          "")
call <sid>hi("Number",       s:cyan,     "",          "")
call <sid>hi("Operator",     s:white,    "",          "none")
call <sid>hi("PreProc",      s:yellow,   "",          "")
call <sid>hi("Repeat",       s:yellow,   "",          "")
call <sid>hi("Special",      s:cyan,     "",          "")
call <sid>hi("SpecialChar",  s:brown,    "",          "")
call <sid>hi("Statement",    s:red,      "",          "")
call <sid>hi("StorageClass", s:yellow,   "",          "")
call <sid>hi("String",       s:green,    "",          "")
call <sid>hi("Structure",    s:magenta,  "",          "")
call <sid>hi("Tag",          s:yellow,   "",          "")
call <sid>hi("Todo",         s:yellow,   s:dark_gray, "")
call <sid>hi("Type",         s:yellow,   "",          "none")
call <sid>hi("Typedef",      s:yellow,   "",          "")

" C highlighting
call <sid>hi("cOperator",  s:cyan,    "", "")
call <sid>hi("cPreCondit", s:magenta, "", "")

" CSS highlighting
call <sid>hi("cssBraces",    s:white,   "", "")
call <sid>hi("cssClassName", s:magenta, "", "")
call <sid>hi("cssColor",     s:cyan,    "", "")

" Diff highlighting
call <sid>hi("DiffAdd",     s:green,    s:dark_gray, "")
call <sid>hi("DiffChange",  s:mid_gray, s:dark_gray, "")
call <sid>hi("DiffDelete",  s:red,      s:dark_gray, "")
call <sid>hi("DiffText",    s:blue,     s:dark_gray, "")
call <sid>hi("DiffAdded",   s:green,    s:black,     "")
call <sid>hi("DiffFile",    s:red,      s:black,     "")
call <sid>hi("DiffNewFile", s:green,    s:black,     "")
call <sid>hi("DiffLine",    s:blue,     s:black,     "")
call <sid>hi("DiffRemoved", s:red,      s:black,     "")

" Git highlighting
call <sid>hi("gitCommitOverflow", s:red,   "", "")
call <sid>hi("gitCommitSummary",  s:green, "", "")

" GitGutter highlighting
call <sid>hi("GitGutter",             s:green,   s:dark_gray, "bold")
call <sid>hi("GitGutterChange",       s:blue,    s:dark_gray, "bold")
call <sid>hi("GitGutterDelete",       s:red,     s:dark_gray, "bold")
call <sid>hi("GitGutterChangeDelete", s:magenta, s:dark_gray, "bold")

" HTML highlighting
call <sid>hi("htmlBold",   s:yellow,  "", "")
call <sid>hi("htmlItalic", s:magenta, "", "")
call <sid>hi("htmlEndTag", s:white,   "", "")
call <sid>hi("htmlTag",    s:white,   "", "")

" JavaScript highlighting
call <sid>hi("javaScript",       s:white,  "", "")
call <sid>hi("javaScriptBraces", s:white,  "", "")
call <sid>hi("javaScriptNumber", s:orange, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",             s:green, "",      "")
call <sid>hi("markdownError",            s:white, s:black, "")
call <sid>hi("markdownCodeBlock",        s:green, "",      "")
call <sid>hi("markdownHeadingDelimiter", s:blue,  "",      "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash", s:blue,  "", "")
call <sid>hi("NERDTreeExecFile", s:white, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector", s:white, "", "")
call <sid>hi("phpComparison",     s:white, "", "")
call <sid>hi("phpParent",         s:white, "", "")

" Python highlighting
call <sid>hi("pythonOperator", s:magenta, "", "")
call <sid>hi("pythonRepeat",   s:magenta, "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",              s:blue,   "", "")
call <sid>hi("rubyConstant",               s:yellow, "", "")
call <sid>hi("rubyInterpolation",          s:green,  "", "")
call <sid>hi("rubyInterpolationDelimiter", s:brown,  "", "")
call <sid>hi("rubyRegexp",                 s:cyan,   "", "")
call <sid>hi("rubySymbol",                 s:green,  "", "")
call <sid>hi("rubyStringDelimiter",        s:green,  "", "")

" SASS highlighting
call <sid>hi("sassidChar",    s:red,     "", "")
call <sid>hi("sassClassChar", s:orange,  "", "")
call <sid>hi("sassInclude",   s:magenta, "", "")
call <sid>hi("sassMixing",    s:magenta, "", "")
call <sid>hi("sassMixinName", s:blue,    "", "")

" Spelling highlighting
call <sid>hi("SpellBad",   "", s:black, "undercurl")
call <sid>hi("SpellLocal", "", s:black, "undercurl")
call <sid>hi("SpellCap",   "", s:black, "undercurl")
call <sid>hi("SpellRare",  "", s:black, "undercurl")

" Quickfix
highlight link QuickFixLine Visual
highlight link qfError LineNr

" Syntastic
call <sid>hi("SyntasticErrorSign", s:red, s:dark_gray, "")
call <sid>hi("SyntasticWarningSign", s:yellow, s:dark_gray, "")

" ALE
highlight link ALEErrorSign SyntasticErrorSign
highlight link ALEWarningSign SyntasticWarningSign

" Matchparen
call <sid>hi("MatchParen", s:white, s:semi_dark_gray, "")

" Vimfiler
highlight link vimfilerNonMark    NERDTreeDirSlash
highlight link vimfilerLeaf       NERDTreeDirSlash
highlight link vimfilerClosedFile NERDTreeDirSlash
highlight link vimfilerOpenedFile NERDTreeDirSlash
highlight link vimfilerNormalFile Normal
highlight link vimfilerMarkedFile Type

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:black s:dark_gray s:semi_dark_gray s:mid_gray s:light_gray
      \ s:white s:bright_white s:red s:orange s:yellow
      \ s:green s:cyan s:blue s:magenta s:brown
