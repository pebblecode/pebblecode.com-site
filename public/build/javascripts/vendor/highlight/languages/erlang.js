hljs.LANGUAGES.erlang=function(){var e="[a-z'][a-zA-Z0-9_']*",t="("+e+":"+e+"|"+e+")",n={keyword:{after:1,and:1,andalso:10,band:1,begin:1,bnot:1,bor:1,bsl:1,bzr:1,bxor:1,"case":1,"catch":1,cond:1,div:1,end:1,fun:1,let:1,not:1,of:1,orelse:10,query:1,receive:1,rem:1,"try":1,when:1,xor:1},literal:{"false":1,"true":1}},r={className:"comment",begin:"%",end:"$",relevance:0},i={begin:"fun\\s+"+e+"/\\d+"},s={begin:t+"\\(",end:"\\)",returnBegin:!0,relevance:0,contains:[{className:"function_name",begin:t,relevance:0},{begin:"\\(",end:"\\)",endsWithParent:!0,returnEnd:!0,relevance:0}]},o={className:"tuple",begin:"{",end:"}",relevance:0},u={className:"variable",begin:"\\b_([A-Z][A-Za-z0-9_]*)?",relevance:0},a={className:"variable",begin:"[A-Z][a-zA-Z0-9_]*",relevance:0},f={begin:"#",end:"}",illegal:".",relevance:0,returnBegin:!0,contains:[{className:"record_name",begin:"#"+hljs.UNDERSCORE_IDENT_RE,relevance:0},{begin:"{",endsWithParent:!0,relevance:0}]},l={keywords:n,begin:"(fun|receive|if|try|case)",end:"end"};l.contains=[r,i,hljs.inherit(hljs.APOS_STRING_MODE,{className:""}),l,s,hljs.QUOTE_STRING_MODE,hljs.C_NUMBER_MODE,o,u,a,f];var c=[r,i,l,s,hljs.QUOTE_STRING_MODE,hljs.C_NUMBER_MODE,o,u,a,f];s.contains[1].contains=c,o.contains=c,f.contains[1].contains=c;var h={className:"params",begin:"\\(",end:"\\)",endsWithParent:!0,contains:c};return{defaultMode:{keywords:n,illegal:"(</|\\*=|\\+=|-=|/=|/\\*|\\*/|\\(\\*|\\*\\))",contains:[{className:"function",begin:"^"+e+"\\(",end:";|\\.",returnBegin:!0,contains:[h,{className:"title",begin:e},{keywords:n,begin:"->",endsWithParent:!0,contains:c}]},r,{className:"pp",begin:"^-",end:"\\.",relevance:0,excludeEnd:!0,returnBegin:!0,lexems:"-"+hljs.IDENT_RE,keywords:{"-module":1,"-record":1,"-undef":1,"-export":1,"-ifdef":1,"-ifndef":1,"-author":1,"-copyright":1,"-doc":1,"-vsn":1,"-import":1,"-include":1,"-include_lib":1,"-compile":1,"-define":1,"-else":1,"-endif":1,"-file":1,"-behaviour":1,"-behavior":1},contains:[h]},hljs.C_NUMBER_MODE,hljs.QUOTE_STRING_MODE,f,u,a,o]}}}();