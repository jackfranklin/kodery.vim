function! KoderyFindSnippet(txt)
  let result=system('kodery '.a:txt)
  return substitute(result, "\n", "", "")
endfunction

function! KoderyAppendSnippet(text)
  execute 'normal! a'.a:text
endfunction

function! KoderyPrependSnippet(text)
  execute 'normal! i'.a:text
endfunction

function! KoderyGoAndPrepend()
  let searchTerm = input('Enter search term: ')
  let snippet = KoderyFindSnippet(searchTerm)
  call KoderyPrependSnippet(snippet)
endfunction

function! KoderyGoAndAppend()
  let searchTerm = input('Enter search term: ')
  let snippet = KoderyFindSnippet(searchTerm)
  call KoderyAppendSnippet(snippet)
endfunction

