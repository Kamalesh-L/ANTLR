grammar Grammar1;

s: '(' l ')' 
 | 'a' 
 ;

l: l ',' s 
 | s 
 ;

WS: [ \t\r\n]+ -> skip;  
