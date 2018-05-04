" Vim syntax file
" Language: Rio
" Maintainer: Oleg Kirichenko <https://github.com/divsense>
" License: MIT
"
if exists("b:current_syntax")
    finish
endif

syn keyword rioKeyword if else switch case default break return export output import connect
syn keyword rioFunction map reduce head tail F T add addIndex adjust all allPass always and any
            \ anyPass ap aperture append apply applySpec applyTo ascend assoc assocPath binary bind
            \ both chain clamp clone comparator complement compose concat cond converge
            \ countBy curry curryN dec defaultTo descend difference differenceWith dissoc dissocPath
            \ divide drop dropLast dropLastWhile droppeats droppeatsWith dropWhile either empty endsWith
            \ eqBy eqProps equals evolve filter find findIndex findLast findLastIndex flatten flip
            \ forEach forEachObjIndexed fromPairs groupBy groupWith gt gte has hasIn head identical
            \ identity ifElse inc indexBy indexOf init innerJoin insert insertAll intersection intersperse
            \ into invert invertObj invoker isNumber isString isObject isArray isEmpty isNil join juxt keys last lastIndexOf length
            \ lens lensIndex lensPath lensProp lift liftN lt lte map mapAccum mapAccumght mapObjIndexed
            \ match mathMod max maxBy mean median memoizeWith merge mergeAll mergeDeepLeft mergeDeepght
            \ mergeDeepWith mergeDeepWithKey mergeWith mergeWithKey min minBy modulo multiply nAry
            \ negate none not nth nthArg o objOf of omit once or over pair partial partialght partition
            \ path pathEq pathOr pathSatisfies pick pickAll pickBy pipe pipeK pipeP pluck prepend
            \ product project prop propEq propIs propOr propSatisfies props range reduce reduceBy
            \ reduceght reduceWhile reduced reject remove repeat replace reverse scan sequence set
            \ slice sort sortBy sortWith split splitAt splitEvery splitWhen startsWith subtract sum
            \ symmetricDifference symmetricDifferenceWith tail take takeLast takeLastWhile takeWhile
            \ tap test times toLower toPairs toPairsIn toString toUpper transduce transpose traverse
            \ trim tryCatch type unapply unary uncurryN unfold union unionWith uniq uniqBy uniqWith
            \ unless unnest until update useWith values valuesIn view when where whereEq without xprod
            \ zip zipObj zipWit 
            \ contains

syn match rioOperator "[/.+*?&!]"
syn match rioDeclaration /\s*[_a-zA-Z$][a-zA-Z$_0-9]*\s*=/he=e-1

syn region rioRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gim]\{0,2\}\s*$+ end=+/[gim]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn match rioOperator    "[{}]"
syn match rioOperator    "[()]"
syn match rioOperator    "[\[\]]"
syn match rioOperator    "=\{1,3}\|!==\|!=\|<\|>\|>=\|<="
syn match rioOperator    "[;,]"
syn match rioOperator    "\(&&\)\|\(||\)"

syn match rioOperator "->"
syn match rioOperator ">>>"
syn match rioOperator "!>>"
syn match rioOperator ">>[=]"
syn match rioOperator ">>"
syn match rioOperator "<|>"
syn match rioOperator "<<>"
syn match rioOperator "<=<"
syn match rioOperator "<[*]>"

syn match rioNumber "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

syn region literal start="'" end="'"
syn region literal start="\"" end="\""
syn region innerLiteral start="'" end="'" contained
syn region innerLiteral start="\"" end="\"" contained
syn region comment start="/[*]" end="[*]/"
syn region comment start="//" end="\n"

hi link rioKeyword   Keyword
hi link rioFunction  Function
hi link rioOperator  Operator
hi link rioNumber    Number
hi link comment      Comment
hi link literal      String
hi link innerLiteral    Comment
hi link rioDeclaration PreProc
hi link rioRegexpString    Type

let b:current_syntax = 'rio'

