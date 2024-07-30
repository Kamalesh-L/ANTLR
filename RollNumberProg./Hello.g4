lexer grammar Hello;

REGISTER_NUMBER: 
    PREFIX '.' 
    MIDDLE '.' 
    STATUS 
    YEAR 
    DEPARTMENT 
    [0-9] [0-9] 
    [0-9] [0-9] [0-9]
    {
        String text = getText();
        
        String x = text.substring(0, 2);
        if (x.equals("CB")) {
            System.out.println("COIMBATORE");
        } else if (x.equals("AM")) {
            System.out.println("AMARAVATI");
        } else if (x.equals("BN")) {
            System.out.println("BANGALORE");
        }

        x = text.substring(3, 5);
        if (x.equals("EN")) {
            System.out.println("ENGINEERING");
        } else if (x.equals("AS")) {
            System.out.println("ARTS");
        } else if (x.equals("MG")) {
            System.out.println("MG");
        }

        x = text.substring(6, 7);
        if(x.equals("U")){
            System.out.println("UnderGrad");
        } else {
            System.out.println("PostGrad");
        }
        
        x = text.substring(8, 11);
        if (x.equals("CSE")) {
            System.out.println("Computer Science and Engineering");
        } else if (x.equals("ECE")) {
            System.out.println("Electronics and Communication Engineering");
        } else if (x.equals("EEE")) {
            System.out.println("Electrical and Electronics Engineering");
        } else if (x.equals("CIV")) {
            System.out.println("Civil Engineering");
        } else if (x.equals("MEC")) {
            System.out.println("Mechanical Engineering");
        } else if (x.equals("CHE")) {
            System.out.println("Chemical Engineering");
        } else if (x.equals("MCA")) {
            System.out.println("Master of Computer Applications");
        } else if (x.equals("CYS")) {
            System.out.println("Cyber Security");
        } else if (x.equals("VLS")) {
            System.out.println("VLSI Design");
        } else if (x.equals("CEN")) {
            System.out.println("Computer Engineering");
        } else if (x.equals("RSW")) {
            System.out.println("Renewable Energy and Water");
        } else if (x.equals("WNA")) {
            System.out.println("Wireless Networks and Applications");
        }

        String batchYear = text.substring(11, 13);
        System.out.println("Batch Year: 20" + batchYear);

        String serialNumber = text.substring(13);
        System.out.println("Serial Number: " + serialNumber);
        char classSection = text.charAt(13);
        switch(classSection) {
            case '0':
                System.out.println("A Section");
                break;
            case '1':
                System.out.println("B Section");
                break;
            case '2':
                System.out.println("C Section");
                break;
            case '3':
                System.out.println("D Section");
                break;
            case '4':
                System.out.println("E Section");
                break;
            case '5':
                System.out.println("F Section");
                break;
            default:
                System.out.println("Unknown Section");
                break;
        }
        
    };

fragment PREFIX: 'CB' | 'AM' | 'BN';
fragment MIDDLE: 'EN' | 'AS' | 'MG';
fragment STATUS: 'U' | 'P';
fragment YEAR: [1-6];
fragment DEPARTMENT: 'CSE' | 'ECE' | 'EEE' | 'CIV' | 'MEC' | 'CHE' | 'MCA' | 'CYS' | 'VLS' | 'CEN' | 'RSW' | 'WNA';

WS: [ \t\r\n]+ -> skip;
