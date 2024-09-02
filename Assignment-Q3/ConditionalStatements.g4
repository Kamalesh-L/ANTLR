grammar ConditionalStatements;

prog: (statement)* ;

statement
    : 'if' '(' condition ')' block ('else' block)?
    | 'while' '(' condition ')' block
    | assignment
    ;

condition: expr ('>' | '<' | '==' | '!=') expr ;

block: '{' statement* '}' ;

assignment: ID '=' expr ';' ;

expr: expr ('+'|'-'|'*'|'/') expr 
    | ID 
    | INT 
    ;

ID: [a-zA-Z_][a-zA-Z_0-9]* ;  
INT: [0-9]+ ;           

WS: [ \t\r\n]+ -> skip;       
