" FTPlugin for java.
" Author : Ravi Shankar & Madan
" Version : 1.1
" Look for latest version at http://insenvim.freeservers.com
" You are free to change this file, provided you leave this header intact.
" This file should go to $VIMRUNTIME\ftplugin
if exists("b:jsp_vis")
  finish
endif
call StartIntelliSense()
let b:ignorekeys = "_"
let b:dochelpdelay = "2000"
let b:delimiterkey = "("
let b:tooltipclosekey = ")"
let b:helpwindowsize="0x0"
"0 is no ignore case
let b:ignorecase = 0 
imap <silent><buffer> . .<C-O>:call ShowVISDialog("showMethodList")<CR>
imap <silent><buffer> < <<C-O>:call ShowVISDialog("showMethodList")<CR>
imap <silent><buffer> <C-Space>  <Space><Left><C-O>:call ShowVISDialog("showGenList")<CR>
imap <silent><buffer> =  =<C-O>:call ShowVISDialog("showGenList")<CR>
imap <silent><buffer> ( (<C-O>:call ShowVISDialog("showTooltip")<CR>
imap <silent><buffer> <C-S-Space> <C-O>:call ShowVISDialog("showTooltip")<CR>


