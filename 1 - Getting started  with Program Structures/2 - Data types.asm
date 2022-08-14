 ; ====== Rules for storing data ========
 ; - Data types in 8086 Assembly Language
 ; - Variable  declaration and its initialization
 
 ; We can store data as:
 ; decimal      (example: 12d, 34D, 3412d)
 ; hexadecimal  (example: 1A3Dh, 34H, AD12h)
 ; binary       (example: 10b, 1101B, 01011b)
 ; character    (example: 'A', "B") Should enclosed with single/double quotes.
 ; string       (example: "Hello!! $", "Mymensingh $") A string will end on string terminator $.
                         
 ; ----------------------------------------------------------------------------------------------------------
 ; Data type/pseudo operation         Meaning             Type            Size           Range              |
 ; ----------------------------------------------------------------------------------------------------------
 ; DB                               Define byte          signed          1 byte      -2^7 to 2^7-1          |
 ;                                                                                   -128 to 128            | 
 ;                                                       unsigned        1 byte       0 to 2^8-1            |
 ;                                                                                    0 to 255              |
 ; DW                               Define Word          signed          2 byte      -2^15 to 2^15-1        |
 ;                                                                                   -32768 to 32768        |
 ;                                                       unsigned        2 byte       0 to 2^16-1           |
 ;                                                                                    0 to 65,535           |
 ; DD                               Define Double        signed          4 byte       2^31 to 2^31-1        |
 ;                                                       unsigned        4 byte       0 to 2^32-1           |
 ;                                                                                                          |
 ; DQ                               Define Quad          signed          8 byte       2^63 to 2^63-1        |
 ;                                                       unsigned        8 byte       0 to 2^64-1           |
 ;                                                                                                          |
 ; DT                               Define Tera          signed          10 byte      2^127 to 2^127-1      |
 ;                                                       unsigned        10 byte      0 to 2^128-1          |
 ;-----------------------------------------------------------------------------------------------------------
 
 
 ; ===== Variable Declaration and its initialization =====
 ; Syntax: <variable name> <data> <type> <value>  
 ;  
 ; For example:
 ; Age db 22
 ; FirstName db "Adil $"
 ; Dept db 'e'
 
     
 DATA SEGMENT          ;start of data segment
    ;declare variables, array, struct etc.
 ENDS                  ;end of data segment
 
 STACK SEGMENT         ;start of stack segment
       
 ENDS                  ;end of stack segment
 
 CODE SEGMENT          ;start of code segment
    main proc          ;start of main function
        ;logic/instructions
        
        
        
        
    main endp          ;end of main function        
 ENDS                  ;end of code segment
 
 END MAIN             ;end of program