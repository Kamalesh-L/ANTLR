grammar VariableAssignment;

prog: (declaration | assignment)+ ;

declaration: 'int' ID ';' ;

assignment: ID '=' expr ';' ;

expr: expr ('+'|'-') expr 
    | ID 
    | INT 
    ;

ID: [a-zA-Z_][a-zA-Z_0-9]* ; 
INT: [0-9]+ ;          

WS: [ \t\r\n]+ -> skip;      
