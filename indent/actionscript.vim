" Vim indent file
" " Language:    Adobe Actionscript
" " Version:     1.0
" " Maintainer:  David Fishburn (dfishburn DOT vim AT gmail DOT com)
" " Last Change: 2009 Sep 02
"
" " Only load this indent file when no other was loaded.
 if exists("b:did_indent")
    finish
    endif
    let b:did_indent = 1

    setlocal cindent
    setlocal ai

    let b:undo_indent = "setl cin<"
