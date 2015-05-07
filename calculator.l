/* lexical grammar */
%%

\s+                   /* skip whitespace */
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
"*"                   return '*'
"/"                   return '/'
"-"                   return '-'
"+"                   return '+'
"^"                   return '^'
"!"                   return '!'
"%"                   return '%'
"("                   return '('
")"                   return ')'
"="					  return '='
"PI"                  return 'PI'
"E"                   return 'E'
[a-zA-Z_]\w*		  return 'ID'		/*Hay que ponerlo aqui para que no de problemas con PI*/
";"					  return ';'
<<EOF>>               return 'EOF'
.                     return 'INVALID'