" Vim syntax file for Mind C files
"

" Check if file contains mind C keywords in first 100 lines
let file_syntax = Mind_or_SimpleC()
if(file_syntax == "simplec")
   finish
endif

syntax keyword mind_macro METH CALL CALL_PTR PRIVATE ATTR CONSTRUCTOR GET_MY_INTERFACE

hi! def link mind_macro Function
