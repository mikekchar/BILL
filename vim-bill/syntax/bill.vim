syn match Comment "#.*"
syn match billHeadingRule "^[=-]\+$" contained
syn match billH1 "^.\+\n=\+$" contains=@billHeadingRule
syn match billH2 "^.\+\n-\+$" contains=@billHeadingRule

hi def link billH1                    htmlH1
hi def link billH2                    htmlH2
hi def link billHeadingRule           markdownHeadingRule
