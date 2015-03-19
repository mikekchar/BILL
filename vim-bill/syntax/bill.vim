" Vim syntax file
" Language:	BILL
" Maintainer:	Mike Charlton <mikekchar@gmail.com>
" Last Change:	2015 March 19
" Remark:	Included by the bill syntax.

syn sync minlines=10 maxlines=10
syn case ignore

syn match billStartLine "^" contains=billComment,@billHeading,billType,billListEntry,billRequestSection
syn match billComment "#.*"
syn cluster billHeading contains=billH1,billH2
syn match billH1 "^.\+\n=\+$" contains=billHeadingRule
syn match billH2 "^.\+\n-\+$" contains=billHeadingRule
syn match billHeadingRule "^[=-]\+$" contained
syn match billType "^[^#]\+:" nextgroup=@billRecord skipwhite
syn match billListEntry "^-" nextgroup=@billRecord skipwhite
syn match billRequestSection "^\*$"
syn cluster billRecord contains=billUserData,billSeparator,billData
syn match billRequest "\*" contained nextgroup=billData
syn match billData "[^,]\+" contained nextgroup=@billRecord
syn match billUserData "[^,*]\+" contained nextgroup=@billRecord
syn match billSeparator "," contained nextgroup=@billRecord skipwhite

hi def link billComment               Comment
hi def link billType                  Type
hi def link billH1                    htmlH1
hi def link billH2                    htmlH2
hi def link billHeadingRule           markdownHeadingRule
hi def link billRequestSection        Special
hi def link billRequest               Statement
hi def link billData                  SpecialChar
hi def link billUserData              Normal
hi def link billListEntry             Statement  
hi def link billSeparator             Delimiter
