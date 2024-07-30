lexer grammar Hello;
IF:'if'{System.out.println('IF KEYWORD');};
ID: [a-z] ([a-z]|[0-9])*{System.out.println('IDENTIFIER');};
NUM:[0]|[1-9]+[0-9]*{System.out.println('NUMBER');};
REAL:((([0]|([1-9]+([0-9])))+'.'+([0-9]))|('.'[0-9]+[0-9]*)) { System.out.println('REAL');};
WS:[ \t\r\n]+ { System.out.println("space");}-> skip;
