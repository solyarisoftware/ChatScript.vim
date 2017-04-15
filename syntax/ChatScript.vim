" Vim syntax file
" Language: ChatScript
" Maintainer: Giorgio Robino (giorgio.robino@gmail.com)
" Latest Revision: 28 March 2017

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

"echom "Our syntax highlighting code will go here."

"Execution flow
syntax match csOperator '\'\|\(!\|==\|AND\|and\|OR\|or\|>=\|<=\|!=\|>\|<\|?\)'
syntax match csOperator '\(if\|else\|else if\|{\|}\)'

" Boolean & state
syntax match csBoolean '\(null\|true\|false\)'

" Assigment
syntax match csOperator '\(?!\|+=\|-=\|\\*=\|=\|%=\|*=\|<<=\|>>=\|<<\|>>\|&=\|^=\)'

syntax match csRule '[rstu]:'
syntax match csRule '[a-q]:'
syntax match csRule '\v\?:' 

syntax match csKeyword 'topic:\|concept:\|patternmacro:\|outputmacro:' 

" syntax match csKeyword 'concept:' 

syntax match csComment '\v#.*$' 
syntax match csTestComment '\v#!.*$' 

" syntax match csLabel  '\a\+_\a\+' 
syntax match csString '".*"' 
syntax match csActiveString '\^".*"' 


syntax match csWildcard '\*' 

syntax match csSpecialChar '\\n\|\\r\|\\t\|\\' 

syntax match csBracketsDelimiter '\[\|\]'
syntax match csPatternDelimiter '(\|)'

syntax match csTopicName '\~\a*'
syntax match csFunction  '\^[a-z_\.A-Z]\+'

" Match variables
syntax match csMatchVariable '_\(\d*\|\*\)' 

" User permanent variables
syntax match csPermanentVariable  '\$[a-zA-Z][._0-9a-zA-Z]\+'

" User transient variables
syntax match csTransientVariable  '\$\$[a-zA-Z][._0-9a-zA-Z]\+'

" Local variables
syntax match csLocalVariable  '\$_[a-zA-Z][._0-9a-zA-Z]\+'

" Fact set
syntax match csFactset '@\(\d*\|\*\)' 

highligh  link csSpecialChar       Character
highligh  link csPreProc           PreProc
highlight link csRule              Keyword
highlight link csFactset           Keyword
highlight link csName              Statement
highlight link csComment           Comment
highlight link csTestComment       String
highlight link csKeyword           Keyword
highlight link csPatternDelimiter  Ignore 
highlight link csBracketsDelimiter Keyword
highlight link csTopicName         Keyword
highlight link csFunction          Special
highlight link csWildcard          Keyword 
highlight link csMatchVariable     Keyword
highlight link csSystemVariable    StorageClass
highlight link csPermanentVariable Identifier
highlight link csTransientVariable StorageClass
highlight link csLocalVariable     String
highlight link csOperator          Operator
highlight link csBoolean           String
highlight link csConstant          Constant
highlight link csString            String
highlight link csActiveString      String 
highlight link csLabel             Todo

let b:current_syntax = 'ChatScript'



"	*Comment	any comment
"
"	*Constant	any constant
"	 String		a string constant: "this is a string"
"	 Character	a character constant: 'c', '\n'
"	 Number		a number constant: 234, 0xff
"	 Boolean	a boolean constant: TRUE, false
"	 Float		a floating point constant: 2.3e10
"
"	*Identifier	any variable name
"	 Function	function name (also: methods for classes)
"
"	*Statement	any statement
"	 Conditional	if, then, else, endif, switch, etc.
"	 Repeat		for, do, while, etc.
"	 Label		case, default, etc.
"	 Operator	"sizeof", "+", "*", etc.
"	 Keyword	any other keyword
"	 Exception	try, catch, throw
"
"	*PreProc	generic Preprocessor
"	 Include	preprocessor #include
"	 Define		preprocessor #define
"	 Macro		same as Define
"	 PreCondit	preprocessor #if, #else, #endif, etc.
"
"	*Type		int, long, char, etc.
"	 StorageClass	static, register, volatile, etc.
"	 Structure	struct, union, enum, etc.
"	 Typedef	A typedef
"
"	*Special	any special symbol
"	 SpecialChar	special character in a constant
"	 Tag		you can use CTRL-] on this
"	 Delimiter	character that needs attention
"	 SpecialComment	special things inside a comment
"	 Debug		debugging statements
"
"	*Underlined	text that stands out, HTML links

"	*Ignore		left blank, hidden  |hl-Ignore|

"	*Error		any erroneous construct

"	*Todo		anything that needs extra attention; mostly the
"			keywords TODO FIXME and XXX

"System variables (user input)
"syntax match csSystemVariable '%\c\(inputrejoinder\|bot\|revisedinput\|command\|foreign\|impliedyou\|input\|ip\|length\|more\|morequestion\|originalinput\|originalsentence\|parsed\|question\|quotation\|sentence\|tense\|userfirstline\|user\|userinput\|voicex\)'

"System variables (date & time & numbers)
"syntax match csSystemVariable '%\c\(date\|daynumber\|fulltime\|timenumbers\|leapyear\|daylightsavings\|minute\|month\|monthname\|second\|volleytime\|week\|year\|rand\|zulutime\|day\|time\)'

"System variables (chatbot output)
"syntax match csSystemVariable '%\c\(httpresponse\|response\|all\|document\|fact\|freetext\|freedict\|freefact\|maxmatchvariables\|maxfactsets\|host\|regression\|server\|rule\|topic\|actualtopic\|trace\|outputrejoinder\|lastquestion\)'

"System variables (build data)
"syntax match csSystemVariable '%\(dict\|engine\|os\|script\|version\|pid\|restart\|language\)'

"Interchange variables"
"syntax match csSystemVariable '%\c\(cs_afterreset\|cs_beforereset\|cs_token\|cs_response\|cs_jsontimeout\|cs_crashmsg\|cs_abstract\|cs_looplimit\|cs_trace\|cs_control_pre\|cs_prepass\|cs_control_main\|cs_control_post\|botprompt\|userprompt\|cs_crashmsg\|cs_language\|cs_token\|cs_abstract\|cs_prepass\|cs_wildcardseparator\|cs_userfactlimit\|cs_response\|cs_randindex\|cs_utcoffset\|cs_randindex\|cs_bot\|cs_login\|\\$db_error\|\\$findtext_star\t|\\$tcpopen_error\|\\$document\|cs_externaltag\|cs_usermessagelimit\|\\$findtext_word\|\\$csmatch_start\|\\$csmatch_end\|cs_botid\)'

" Response control
"syntax match csConstant '\#\c\(RESPONSE_UPPERSTART\|RESPONSE_REMOVESPACEBEFORECOMMA\|RESPONSE_ALTERUNDERSCORES\|ALL_RESPONSES\|RESPONSE_REMOVETILDE\)'

"Token control
"syntax match csConstant '\#\c\(DO_SUBSTITUTE_SYSTEM\|DO_ESSENTIALS\|DO_SUBSTITUTES\|DO_CONTRACTIONS\|DO_INTERJECTIONS\|DO_BRITISH\|DO_SPELLING\|DO_TEXTING\|DO_NOISE\|DO_PRIVATE\|DO_NUMBER_MERGE\|DO_PROPERNAME_MERGE\|DO_DATE_MERGE\|NO_PROPER_SPELLCHECK\|NO_LOWERCASE_PROPER_MERGE\|DO_SPELLCHECK\|DO_INTERJECTION_SPLITTING\|DO_PARSE\|DO_POSTAG\|NO_IMPERATIVE\|NO_WITHIN\|NO_SENTENCE_END\|NO_HYPHEN_END\|NO_COLON_END\|NO_SEMICOLON_END\|STRICT_CASING\|ONLY_LOWERCASE\|TOKEN_AS_IS\|SPLIT_QUOTE\|UNTOUCHED_INPUT\|JSON_DIRECT_FROM_OOB\|DO_CONDITIONAL_POSTAG\|NO_ERASE\|DO_SPLIT_UNDERSCORE\|MARK_LOWER\|NO_INFER_QUESTION\|LEAVE_QUOTE\|JSON_DIRECT_OOB\|NO_FIX_UTF\|QUESTIONMARK\)'

"Print output codes
"syntax match csConstant '\#*\c\(OUTPUT_RAW\|OUTPUT_RETURNVALUE_ONLY\|OUTPUT_NOCOMMANUMBER\|OUTPUT_NOQUOTES\|OUTPUT_NOUNDERSCORE\)'

" End/nofail codes
"syntax match csConstant '\#*\c\(TOPIC\|NOFAIL\|FAIL\|CALL\|RULE\|LOOP\|SENTENCE\|INPUT\|PLAN\)' 

" TCP open
"syntax match csConstant '\#*\c\(POST\|GET\|TRACE_TCP\|POSTU\|GETU\)' 

" Logs
"syntax match csConstant  '\#*\c\(FILE\|OPEN\|CLOSE\)'

" Json
"syntax match csConstant  '\#*\c\(INDEX\|VALUE\)'

" Word 
"syntax match csConstant  '\#*\c\(NOUN\|VERB\|ADJECTIVE\|ADVERB\|PREPOSITION\)'

" Facts
"syntax match csConstant  '\#*\c\(direct_s\|direct_v\|direct_o\|direct_sv\|direct_so\|direct_vo\|direct_svo\|Unipropogate\|FACTDEAD\)'

" POS
"syntax match csConstant  '\#*\c\(NOUN|VERB\|ESSENTIAL_POS\|ADJECTIVE\|ADVERB\|BASIC_POS\|PREPOSITION\|ESSENTIAL_FLAGS\|CONJUNCTION_COORDINATE\|CONJUNCTION_SUBORDINATE\|CONJUNCTION\|PREDETERMINER\|DETERMINER\|POSSESSIVE\|PRONOUN_POSSESSIVE\|POSSESSIVE_BITS\|DETERMINER_BITS\|COMMA\|REQUIRE_CONCEPT\|PAREN\|PUNCTUATION\|QUOTE\|CURRENCY\|ADJECTIVE_NORMAL\|ADJECTIVE_NUMBER\|ADJECTIVE_NOUN\|ADJECTIVE_PARTICIPLE\|ADJECTIVE_BITS\|INTERJECTION\|THERE_EXISTENTIAL\|FOREIGN_WORD\|TO_INFINITIVE\|NOUN_ADJECTIVE\|NOUN_SINGULAR\|NOUN_PLURAL\|NOUN_PROPER_SINGULAR\|NOUN_PROPER_PLURAL\|NOUN_GERUND\|NOUN_NUMBER\|NOUN_INFINITIVE\|NOUN_PROPER\|NORMAL_NOUN_BITS\|NOUN_BITS\|VERB_PRESENT\|VERB_PRESENT_3PS\|VERB_PRESENT_PARTICIPLE\|VERB_PAST\|VERB_PAST_PARTICIPLE\|VERB_INFINITIVE\|PARTICLE\|VERB_BITS\|PRONOUN_SUBJECT\|PRONOUN_OBJECT\|PRONOUN_BITS\|AUX_DO\|AUX_HAVE\|AUX_BE\|AUX_VERB_PRESENT\|AUX_VERB_FUTURE\|AUX_VERB_PAST\|AUX_VERB_TENSES\|AUX_VERB\|STARTTAGS\|AS_IS\)'

" Other special words
"syntax match csConstant  '\#*\c\(TOPRULES\|PENDING\|START\|END\|BOTH\|BOT\|USER\|AUTOSPACE\|HAS_SUBSTITUTE\|CONCEPT\|TOPIC\)'

"Built-in functions (topics)
"syntax match csFunction '\^\c\(addtopic\|available\|cleartopics\|counttopics\|gambit\|getrule\|hasgambit\|keep\|lastused\|next\|poptopic\|refine\|rejoinder\|respond\|retry\|reuse\|sequence\|setrejoinder\|topicflags\)'

" Built-in functions (marking)
"syntax match csFunction '\^\c\(mark\|unmark\|position\|setposition\|marked\)'

" Built-in functions (input)
"syntax match csFunction '\^\c\(analyze\|capitalized\|input\|original\|position\|removetokenflags\|settokenflags\|setwildcardindex\|actualinputrange\)'

" Built-in functions (number)
"syntax match csFunction '\^\c\(compute\|timefromseconds\|timeinfofromseconds\|timetoeconds\)'

" Built-in functions (output)
"syntax match csFunction '\^\c\(flushoutput\|insertprint\|keephistory\|lastsaid\|print\|preprint\|repeat\|reviseOutput\|savesentence\|restoresentence\|notrace\)'

" Built-in functions (output access)
"syntax match csFunction '\^\c\(response\|responsequestion\|responseruleid\)'

" Built-in functions (print)
"syntax match csFunction '\^\c\(postprintbefore\|postprintafter\|csboot\|csshotdown\)'

" Built-in functions (control flow)
"syntax match csFunction '\^\c\(argument\|command\|end\|eval\|loop\|fail\|load\|match\|nofail\|notnull\|norejoinder\|nottrace\|return\|addcontext\|incontext\)'

" Built-in functions (external access)
"syntax match csFunction '\^\c\(system\|popen\|tcpopen\|export\|import\|debug\|log\|environment)\)'

" Built-in functions (json)
"syntax match csFunction '\^\c\(jsonarrayinsert\|jsonarraydelete\|jsoncreate\|jsondelete\|jsongather\|jsonobjectinsert\|jsonopen\|jsonprint\|jsonwrite\|jsonparse\|jsonpath\|jsonarraysize\|jsonobjectinsert\|jsonlabel\|jsonundecodestring\|jsoncopy\|jsonkind\|jsonreadcvs\|jsontree\)'

" Built-in functions (word manipulation)
"syntax match csFunction '\^\c\(burst\|words\|canon\|explode\|extract\|findtext\|flags\|intersectwords\|join\|properties\|pos\|decodeinputtoken\|decodepos\|partofspeech\|role\|tally\|rhyme\|substitute\|spell\|sexed\|uppercase\|addproperty\|define\|hasanyproperty\|hasallproperty\|removeinternalflag\|removeproperty\|walkdictionary\|iterator\|wordinconcept\|setoriginal\|setcanon\|settag\|setrole\|tokenize\)'

" Built-in functions (multipurpose)
"syntax match csFunction '\^\c\(disable\|enable\|length\|pick\|reset\|clearcontext\|authorized\|callstack\)'

" Built-in functions (facts)
"syntax match csFunction '\^\c\(result\|findfact\|query\|first\|last\|pick\|sort\|delete\|length\|nth\|unpackfactref\|save\|addproperty\|conceptlist\|createattribute\|createfact\|writefact\|revisefact\|field\|find\|findmarkedfact\|flushfacts\|gambittopics\|intersectfacts\|keywordtopics\|last\|makereal\|next\|pendingtopics\|pick\|querytopics\|removeproperty\|reset\|query\|save\|unduplicate\|uniquefacts\|unpackfactref\|importfacts\|serialize\|deserialize\|match\)'




