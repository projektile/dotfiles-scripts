" Vim color file
" Name:       glitchco.vim
" Author:     projektile
" Version:    0.2.0
" Notes:      Supports 8, 16, 256 and 16,777,216 (RGB) color modes

"hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "glitchco"

set background=dark

" Set some syntax-related variables

" -> Text; Miscellaneous
hi Normal         ctermbg=none  ctermfg=none cterm=none
hi SpecialKey     ctermbg=none  ctermfg=1  cterm=none
hi VertSplit      ctermbg=none  ctermfg=14  cterm=none
hi SignColumn     ctermbg=none  ctermfg=5  cterm=none
hi NonText        ctermbg=none  ctermfg=4  cterm=none
hi Directory      ctermbg=none  ctermfg=14  cterm=none 
hi Title          ctermbg=none  ctermfg=10 cterm=bold

" -> Cursor 
hi Cursor         ctermbg=none ctermfg=8  cterm=none
hi CursorIM       ctermbg=none ctermfg=8  cterm=none
hi CursorColumn   ctermbg=none ctermfg=7  cterm=none
hi CursorLine     ctermbg=7 ctermfg=none  cterm=none

" -> Folding
hi FoldColumn     ctermbg=7  ctermfg=1  cterm=none
hi Folded         ctermbg=7  ctermfg=1  cterm=none

" -> Line info  
hi LineNr         ctermbg=7  ctermfg=15  cterm=none
hi StatusLine     ctermbg=7  ctermfg=15  cterm=none
hi StatusLineNC   ctermbg=7  ctermfg=15  cterm=none

" -> Messages
hi ErrorMsg       ctermbg=none  ctermfg=7  cterm=none
hi Question       ctermbg=none  ctermfg=14 cterm=none
hi WarningMsg     ctermbg=none  ctermfg=0  cterm=none
hi MoreMsg        ctermbg=none  ctermfg=14 cterm=none
hi ModeMsg        ctermbg=none  ctermfg=14 cterm=none

" -> Search 
hi Search         ctermbg=none  ctermfg=14 cterm=none 
hi IncSearch      ctermbg=none  ctermfg=14 cterm=none

" -> Diff
hi DiffAdd        ctermbg=none  ctermfg=10 cterm=none
hi DiffChange     ctermbg=none  ctermfg=14 cterm=none
hi DiffDelete     ctermbg=none  ctermfg=12 cterm=none
hi DiffText       ctermbg=none  ctermfg=14 cterm=underline

" -> Menu
hi Pmenu          ctermbg=7  ctermfg=4  cterm=none
hi PmenuSel       ctermbg=none  ctermfg=4  cterm=none
hi PmenuSbar      ctermbg=none             cterm=none
hi PmenuThumb     ctermbg=none             cterm=none
hi PmenuSel       ctermbg=8  ctermfg=3  cterm=none

" -> Tabs
hi TabLine        ctermbg=none  ctermfg=8  cterm=none
hi TabLineFill    ctermbg=none             cterm=none
hi TabLineSel     ctermbg=none  ctermfg=7  cterm=bold  

" -> Visual Mode
hi Visual         ctermbg=7 ctermfg=14 cterm=none
hi VisualNOS      ctermbg=none ctermfg=7  cterm=none

" -> Code
hi Comment        ctermbg=none  ctermfg=15  cterm=none
hi Constant       ctermbg=none  ctermfg=10 cterm=none
hi String         ctermbg=none  ctermfg=6  cterm=none
hi Error          ctermbg=none  ctermfg=4  cterm=none
hi Identifier     ctermbg=none  ctermfg=11 cterm=none
hi Function       ctermbg=none  ctermfg=2 cterm=none
hi Ignore         ctermbg=none  ctermfg=8  cterm=none
hi MatchParen     ctermbg=none  ctermfg=8  cterm=none
hi PreProc        ctermbg=none  ctermfg=5  cterm=none
hi Special        ctermbg=none  ctermfg=14 cterm=none
hi Todo           ctermbg=none  ctermfg=12 cterm=bold
hi Underlined     ctermbg=none  ctermfg=12 cterm=underline
hi Statement      ctermbg=none  ctermfg=5 cterm=none
hi Operator       ctermbg=none  ctermfg=4  cterm=none
hi Delimiter      ctermbg=none  ctermfg=4 cterm=none
hi Type           ctermbg=none  ctermfg=14 cterm=none
hi Exception      ctermbg=none  ctermfg=12 cterm=none

  " -> HTML-specific
hi htmlBold                  ctermbg=none ctermfg=7 cterm=bold
hi htmlBoldItalic            ctermbg=none ctermfg=7 cterm=bold,italic
hi htmlBoldUnderline         ctermbg=none ctermfg=7 cterm=bold,underline
hi htmlBoldUnderlineItalic   ctermbg=none ctermfg=7 cterm=bold,underline,italic
hi htmlItalic                ctermbg=none ctermfg=7 cterm=italic
hi htmlUnderline             ctermbg=none ctermfg=7 cterm=underline
hi htmlUnderlineItalic       ctermbg=none ctermfg=7 cterm=underline,italic

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

" Spellcheck formatting
if has("spell")
	hi SpellBad   guisp=#FC4234 gui=undercurl
	hi SpellCap   guisp=#70BDF1 gui=undercurl
	hi SpellLocal guisp=#FFEE68 gui=undercurl
	hi SpellRare  guisp=#6DF584 gui=undercurl
endif
