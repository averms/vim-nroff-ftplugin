" Vim filetype plugin
" Language:	roff(7)
" Maintainer:	Aman Verma
" Homepage:	https://github.com/averms/vim-nroff-ftplugin
" Previous Maintainer:	Chris Spiegel <cspiegel@gmail.com>
" Last Change:	2020 Nov 21

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal commentstring=.\\\"%s
setlocal comments=:.\\\"
setlocal sections+=Sh

let b:undo_ftplugin = 'setlocal commentstring< comments< sections<'

" abbreviations for MOM macros:
if !get(g:. 'ftplugin_nroff_abbrev', 0) | finish | endif

setlocal iskeyword+=.

inoreabbrev <buffer> .au     .AUTHOR ""
inoreabbrev <buffer> .t      .TITLE ""
inoreabbrev <buffer> .st     .SUBTITLE ""
" inoreabbrev <buffer> .s      .START

inoreabbrev <buffer> .pt     .PT_SIZE
inoreabbrev <buffer> .f      .FAMILY

inoreabbrev <buffer> .lm     .L_MARGIN
inoreabbrev <buffer> .rm     .R_MARGIN
inoreabbrev <buffer> .tm     .T_MARGIN
inoreabbrev <buffer> .bm     .B_MARGIN

inoreabbrev <buffer> .p      .PP
inoreabbrev <buffer> .h1     .HEADING 1
inoreabbrev <buffer> .h2     .HEADING 2
inoreabbrev <buffer> .h3     .HEADING 3

inoreabbrev <buffer> .i      \*[IT]\*[PREV]<left><left><left><left><left><left><left><left>
inoreabbrev <buffer> .b      \*[BD]\*[PREV]<left><left><left><left><left><left><left><left>
inoreabbrev <buffer> .s      \*[SUP]\*[SUPX]<left><left><left><left><left><left><left><left>
inoreabbrev <buffer> .c      \*[CODE]\*[CODE OFF]<c-left><c-left><left><left><left><left><left><left><left><left>
inoreabbrev <buffer> .q      \*[QUOTE]\*[QUOTE END]<c-left><c-left><left><left><left><left><left><left><left><left><left>

inoreabbrev <buffer> .C      .CODE<cr>.CODE OFF<up>
inoreabbrev <buffer> .Q      .QUOTE<cr>.QUOTE END<up>
inoreabbrev <buffer> .BQ     .BLOCKQUOTE<cr>.BLOCKQUOTE OFF<up>
inoreabbrev <buffer> .EP     .EPIGRAPH<cr>.EPIGRAPH OFF<up>

inoreabbrev <buffer> .lb     .LINEBREAK
inoreabbrev <buffer> .np     .NEWPAGE
inoreabbrev <buffer> .drh    .DRH
inoreabbrev <buffer> .sp     .SP

inoreabbrev <buffer> .fn     .FOOTNOTE<cr>.FOOTNOTE OFF<up>
inoreabbrev <buffer> .en     .ENDNOTE<cr>.ENDNOTE OFF<up>

inoreabbrev <buffer> .dc     .DROPCAP
inoreabbrev <buffer> .l      .LIST<cr>.LIST OFF<up>
inoreabbrev <buffer> .it     .ITEM
inoreabbrev <buffer> .toc    .TOC

let b:undo_ftplugin = 'setlocal iskeyword<'
