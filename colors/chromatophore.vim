hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="chromatophore"

" unset default colours {{{
highlight clear Comment
highlight clear Conceal
highlight clear Constant
highlight clear Cursor
highlight clear CursorColumn
highlight clear CursorLine
highlight clear CursorLineNr
highlight clear DiffAdd
highlight clear DiffChange
highlight clear DiffDelete
highlight clear DiffText
highlight clear Directory
highlight clear Error
highlight clear ErrorMsg
highlight clear FoldColumn
highlight clear Folded
highlight clear Identifier
highlight clear Ignore
highlight clear IncSearch
highlight clear LineNr
highlight clear MatchParen
highlight clear ModeMsg
highlight clear MoreMsg
highlight clear NonText
highlight clear Pmenu
highlight clear PmenuSbar
highlight clear PmenuSel
highlight clear PmenuThumb
highlight clear PreProc
highlight clear Question
highlight clear Search
highlight clear SignColumn
highlight clear Special
highlight clear SpecialKey
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellLocal
highlight clear SpellRare
highlight clear Statement
highlight clear StatusLine
highlight clear StatusLineNC
highlight clear TabLine
highlight clear TabLineFill
highlight clear TabLineSel
highlight clear Title
highlight clear Todo
highlight clear Type
highlight clear Underlined
highlight clear VertSplit
highlight clear Visual
highlight clear VisualNOS
highlight clear WarningMsg
highlight clear WildMenu
highlight clear lCursor
" }}}

" set the basic colours
if &background == "light"
	"highlight  Normal  ctermfg=black   ctermbg=white
	highlight  Ignore  ctermfg=lightgray ctermbg=white
else
	"highlight  Normal  ctermfg=white  ctermbg=black
	highlight  Ignore  ctermfg=darkgray ctermbg=black
endif

highlight Error      ctermfg=red     cterm=bold
highlight Statement  ctermfg=yellow  cterm=bold
highlight PreProc    ctermfg=yellow  cterm=bold
highlight Constant   ctermfg=blue
highlight StatusLine ctermfg=magenta ctermbg=white cterm=bold
highlight WildMenu   ctermfg=magenta ctermbg=white cterm=bold,reverse
highlight Visual     ctermfg=green   cterm=reverse
highlight SpellBad   cterm=italic

highlight DiffAdd    ctermfg=green
highlight DiffDelete ctermfg=red

" text colour links
highlight! link Comment    Ignore
highlight! link Special    Constant
highlight! link Todo       Error

" interface colour links
highlight! link ErrorMsg     Error
highlight! link Folded       StatusLine
highlight! link NonText      StatusLine
highlight! link PMenu        StatusLine
highlight! link PMenuSel     WildMenu
highlight! link IncSearch    Visual
highlight! link LineNr       Ignore
highlight! link MatchParen   StatusLine
highlight! link Search       Visual
highlight! link StatusLineNC Ignore
highlight! link EndOfBuffer  Ignore
highlight! link SpellLocal   SpellBad
highlight! link SpellRare    SpellBad

" lang-specific hacks
" The default mappings for some langs is a little wierd
highlight! link PythonInclude  Keyword

highlight! link diffAdded      DiffAdd
highlight! link diffRemoved    DiffDelete
highlight! link diffFile       Statement
