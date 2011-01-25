" Vim syntax for ADL (extended from IDL)
" 

syntax keyword adlKeywords composite type conformsto
syntax keyword adlKeywords primitive attribute extends \contains binds
syntax keyword adlKeywords source data 
syntax keyword adlKeywords PRIVATE

syn keyword adlKeywords     attribute             skipempty skipwhite nextgroup=idlType,idlId
syn keyword adlKeywords     provides requires     skipempty skipwhite nextgroup=idlParmName,adlSmallKeys
syn keyword adlKeywords     \contains             skipempty skipwhite nextgroup=idlParmName,adlSmallKeys
syn keyword adlSmallKeys    as to this            skipempty skipwhite

syn keyword adlAnnotKeywords CFlags LDFlags MyAnnotation Override Singleton contained
syn keyword adlAnnotKeywords UseIDL Wrap                                    contained

syntax match adlAnnotations "@.*$" contains=adlAnnotKeywords

hi! def link adlAnnotations       Comment
hi! def link adlAnnotKeywords     SpecialComment
hi! def link adlKeywords            Keyword
hi! def link adlSmallKeys            Keyword

