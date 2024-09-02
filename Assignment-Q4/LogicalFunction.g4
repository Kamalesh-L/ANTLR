grammar LogicalFunction;

prog: function ;

function: 'f' '(' ID ',' ID ')' block ;

block: '{' (assignment | expr_statement)* '}' ;

assignment: ID '=' logical_expr ';' ;

expr_statement: logical_expr ';' ;
logical_expr: expr ('and' | 'or') expr
    | 'not' expr
    | expr
    ;

expr: ID 
    | INT 
    ;
ID: [a-zA-Z_][a-zA-Z_0-9]* ; 
INT: [0-9]+ ;            

WS: [ \t\r\n]+ -> skip;        
