" Vim plugin file for checking whether the given C
" file describes a Mind source file
"

" Check if the file is a Mind file
fun! Mind_or_SimpleC()
  let last_line_num = line("$")
  if last_line_num > 100
    let last_line_num = 100
  endif
  let cur_line_num = 1
  while (cur_line_num <= last_line_num)
    " Check for systemc keywords
    if getline(cur_line_num) =~? 'CONSTRUCTOR\|METH\|CALL\'
       return "mind"
    endif
    let cur_line_num = cur_line_num + 1
  endwhile
  return "simplec"
endfun
