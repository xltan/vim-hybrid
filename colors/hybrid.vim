hi clear

let g:colors_name = "hybrid"
let s:palette = {}

let s:palette.foreground = "#c6cace"
let s:palette.background = "#232c31"
let s:palette.silver     = "#abb2b9"
let s:palette.selection  = "#425059"
let s:palette.line       = "#2d3c46"
let s:palette.comment    = "#5c6370"
" let s:palette.red        = "#e06c75"
" let s:palette.orange     = "#de935f"
" let s:palette.green      = "#b5bd68"
let s:palette.red        = "#dc5999"
let s:palette.orange     = "#db953b"
let s:palette.green      = "#aaa249"
let s:palette.yellow     = "#e5c079"
let s:palette.aqua       = "#8abeb7"
let s:palette.blue       = "#4A96C6"
let s:palette.purple     = "#b294bb"
let s:palette.addbg      = "#5F875F"
let s:palette.addfg      = "#d7ffaf"
let s:palette.changebg   = "#5F5F87"
let s:palette.changefg   = "#d7d7ff"
let s:palette.delbg      = "#cc6666"

" colors from coco
" let s:palette.red        = "#DC4C33"
" let s:palette.orange     = "#E4853B"
" let s:palette.yellow     = "#DB953B"
" let s:palette.green      = "#AAA249"
" let s:palette.aqua       = "#4A96C6"
" let s:palette.blue       = "#377AB4"
" let s:palette.purple     = "#DC5999"

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field
  let l:gui_assign = "gui".a:hi_elem."=".s:palette[a:field]
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'silver')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'silver')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none       = ' guisp=". s:none                            ."'"
exe "let s:sp_foreground = ' guisp=". s:palette.foreground ."'"
exe "let s:sp_background = ' guisp=". s:palette.background ."'"
exe "let s:sp_selection  = ' guisp=". s:palette.selection  ."'"
exe "let s:sp_line       = ' guisp=". s:palette.line       ."'"
exe "let s:sp_comment    = ' guisp=". s:palette.comment    ."'"
exe "let s:sp_red        = ' guisp=". s:palette.red        ."'"
exe "let s:sp_orange     = ' guisp=". s:palette.orange     ."'"
exe "let s:sp_yellow     = ' guisp=". s:palette.yellow     ."'"
exe "let s:sp_green      = ' guisp=". s:palette.green      ."'"
exe "let s:sp_aqua       = ' guisp=". s:palette.aqua       ."'"
exe "let s:sp_blue       = ' guisp=". s:palette.blue       ."'"
exe "let s:sp_purple     = ' guisp=". s:palette.purple     ."'"
exe "let s:sp_addbg      = ' guisp=". s:palette.addbg      ."'"
exe "let s:sp_addfg      = ' guisp=". s:palette.addfg      ."'"
exe "let s:sp_changebg   = ' guisp=". s:palette.changebg   ."'"
exe "let s:sp_changefg   = ' guisp=". s:palette.changefg   ."'"
"}}}
"
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"   Conceal"
exe "hi! Cursor"        .s:fg_background  .s:bg_red        .s:fmt_none
"   CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! WarningMsg"    .s:fg_orange      .s:bg_none        .s:fmt_none
exe "hi! VertSplit"     .s:fg_line        .s:bg_line        .s:fmt_none
exe "hi! Folded"        .s:fg_silver      .s:bg_line        .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! SignColumn"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! IncSearch"     .s:fg_background  .s:bg_orange      .s:fmt_none
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_red         .s:bg_none        .s:fmt_undr
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
exe "hi! SpecialKey"    .s:fg_silver      .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_none        .s:bg_none        .s:fmt_curl
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_none        .s:fmt_curl
exe "hi! SpellBad"      .s:fg_none        .s:bg_none        .s:fmt_curl
exe "hi! SpellRare"     .s:fg_purple      .s:bg_none        .s:fmt_curl
exe "hi! StatusLine"    .s:fg_foreground  .s:bg_line        .s:fmt_none
exe "hi! StatusLineNC"  .s:fg_comment     .s:bg_line        .s:fmt_none

exe "hi! TabLine"       .s:fg_comment     .s:bg_line        .s:fmt_none
exe "hi! TabLineFill"   .s:fg_comment     .s:bg_line        .s:fmt_none
exe "hi! TabLineSel"    .s:fg_foreground  .s:bg_none        .s:fmt_none

exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! LongLineWarning".s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! WildMenu"       .s:fg_background  .s:bg_yellow      .s:fmt_none

exe "hi! Normal"         .s:fg_foreground   .s:bg_background      .s:fmt_none

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
if exists("g:hybrid_less_color") && g:hybrid_less_color == 1
  exe "hi! Statement"       .s:fg_silver      .s:bg_none        .s:fmt_none
  exe "hi! Function"        .s:fg_silver      .s:bg_none        .s:fmt_none
  exe "hi! Type"            .s:fg_silver      .s:bg_none        .s:fmt_none
  exe "hi! Structure"       .s:fg_silver      .s:bg_none        .s:fmt_none
  exe "hi! Operator"        .s:fg_silver      .s:bg_none        .s:fmt_none
else
  exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
  exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none
  exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
  exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
  exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
endif
exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none

exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

"   Conditional"
"   Repeat"
"   Label"
"   Keyword"
"   Exception"
"   Include"
"   Define"
"   Macro"
"   PreCondit"
"   StorageClass"
"   Typedef"

"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! Error"           .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! Todo"            .s:fg_green       .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"
exe "hi! QuickFixLine"    .s:fg_orange      .s:bg_none        .s:fmt_none

"}}}

" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
exe "hi! diffFile"        .s:fg_orange      .s:bg_none        .s:fmt_none
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
exe "hi! diffRemoved"     .s:fg_red         .s:bg_none        .s:fmt_none
"   diffChanged
exe "hi! diffAdded"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! diffLine"        .s:fg_purple      .s:bg_none        .s:fmt_none
"   diffSubname
"   diffComment

"}}}
"

hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC

hi link goDeclaration Statement

exe "hi Lf_hl_match" . s:fg_red . s:bg_none . s:fmt_none
exe "hi Lf_hl_matchRefine" . s:fg_red . s:bg_none . s:fmt_none

exe "hi gitcommitComment"      .s:fg_comment   .s:bg_none      .s:fmt_none
exe "hi gitcommitUnmerged"     .s:fg_green     .s:bg_none      .s:fmt_none
exe "hi gitcommitOnBranch"     .s:fg_foreground.s:bg_background.s:fmt_none
exe "hi gitcommitBranch"       .s:fg_purple    .s:bg_none      .s:fmt_none
exe "hi gitcommitDiscardedType".s:fg_red       .s:bg_none      .s:fmt_none
exe "hi gitcommitSelectedType" .s:fg_green     .s:bg_none      .s:fmt_none
exe "hi gitcommitHeader"       .s:fg_foreground.s:bg_background.s:fmt_none
exe "hi gitcommitUntrackedFile".s:fg_blue      .s:bg_background.s:fmt_none
exe "hi gitcommitDiscardedFile".s:fg_red       .s:bg_none      .s:fmt_none
exe "hi gitcommitSelectedFile" .s:fg_green     .s:bg_none      .s:fmt_none
exe "hi gitcommitUnmergedFile" .s:fg_yellow    .s:bg_none      .s:fmt_none
exe "hi gitcommitFile"         .s:fg_foreground.s:bg_background.s:fmt_none
exe "hi gitcommitSummary"      .s:fg_foreground.s:bg_background.s:fmt_none
exe "hi gitcommitOverflow"     .s:fg_red       .s:bg_none      .s:fmt_none
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
hi link fuck gitcommitUnmergedFile

