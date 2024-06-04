; original File = C:\Users\Administrador\Desktop\reloj.hex

    processor 16F877A
    #include <P16F877A.INC>
    __config 0x2F42
;   _CP_OFF & _DEBUG_OFF & _WRT_OFF & _CPD_OFF & _LVP_OFF & _BODEN_ON & _PWRTE_ON & _WDT_OFF 
;   & _HS_OSC 

; RAM-Variable
LRAM_0x20 equ 0x20
LRAM_0x21 equ 0x21
LRAM_0x22 equ 0x22
LRAM_0x23 equ 0x23
LRAM_0x24 equ 0x24
LRAM_0x25 equ 0x25
LRAM_0x26 equ 0x26
LRAM_0x27 equ 0x27
LRAM_0x28 equ 0x28
LRAM_0x29 equ 0x29
LRAM_0x2A equ 0x2A
LRAM_0x2B equ 0x2B
LRAM_0x2C equ 0x2C
LRAM_0x2D equ 0x2D
LRAM_0x2E equ 0x2E
LRAM_0x2F equ 0x2F
LRAM_0x30 equ 0x30
LRAM_0x31 equ 0x31
LRAM_0x32 equ 0x32
LRAM_0x33 equ 0x33
LRAM_0x34 equ 0x34
LRAM_0x35 equ 0x35
LRAM_0x36 equ 0x36
LRAM_0x37 equ 0x37
LRAM_0x38 equ 0x38
LRAM_0x3A equ 0x3A
LRAM_0x64 equ 0x64
LRAM_0x65 equ 0x65
LRAM_0x77 equ 0x77
LRAM_0x78 equ 0x78

; Program

    Org 0x0000

;   Reset-Vector
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF PCLATH         ; !!Bank Program-Page-Select
    GOTO LADR_0x0247
    NOP
;   Interrupt-Vector
    BCF LRAM_0x20,0
    BCF LRAM_0x20,0
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    NOP
    DB 0x0C              ; !! Unknown Command
    MOVLW 0xED           ;   b'11101101'  d'237'
    XORLW 0xEE           ;   b'11101110'  d'238'
    MOVLW 0x20           ;   b'00100000'  d'032'  " "
    BCF LRAM_0x65,0
    RETLW 0x61           ;   b'01100001'  d'097'  "a"
    ANDLW 0x61           ;   b'01100001'  d'097'  "a"
    MOVLW 0xED           ;   b'11101101'  d'237'
    CLRW
    BCF LRAM_0x20,0
    BCF LRAM_0x20,0
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    CLRW
    BCF LRAM_0x20,0
    BCF LRAM_0x20,0
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    CLRW
    BCF LRAM_0x20,0
    BCF LRAM_0x20,0
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    CLRW
    DB 0x0C              ; !! Unknown Command
    BCF LRAM_0x20,0
    BCF LRAM_0x20,0
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    NOP
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    BCF LRAM_0x3A,5
    BTFSC LRAM_0x30,2
    BTFSS LRAM_0x64,2
    BTFSC LRAM_0x25,0
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
    CALL LADR_0x00A0
    CALL LADR_0x00CC
    CALL LADR_0x06D2
    DB 0x41              ; !! Unknown Command
LADR_0x004B
    MOVLW 0x31           ;   b'00110001'  d'049'  "1"
    MOVWF FSR
    BCF STATUS,IRP
    MOVF INDF,W
    BTFSC STATUS,Z
    GOTO LADR_0x005F
LADR_0x0051
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x78
LADR_0x0053
    CLRF LRAM_0x77
LADR_0x0054
    DECFSZ LRAM_0x77,F
    GOTO LADR_0x0054
    DECFSZ LRAM_0x78,F
    GOTO LADR_0x0053
    MOVLW 0x4A           ;   b'01001010'  d'074'  "J"
    MOVWF LRAM_0x77
LADR_0x005A
    DECFSZ LRAM_0x77,F
    GOTO LADR_0x005A
    GOTO LADR_0x005D
LADR_0x005D
    DECFSZ INDF,F
    GOTO LADR_0x0051
LADR_0x005F
    RETURN
LADR_0x0060
    SWAPF LRAM_0x38,W
    ANDLW 0xF0           ;   b'11110000'  d'240'
    MOVWF LRAM_0x77
    MOVLW 0x0F           ;   b'00001111'  d'015'
    ANDWF PORTD,W        ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    IORWF LRAM_0x77,W
    MOVWF PORTD          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    BSF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    GOTO LADR_0x006A
LADR_0x006A
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    RETURN
LADR_0x006C
    MOVF PORTD,W         ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVWF LRAM_0x77
    SWAPF PORTD,W        ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    ANDLW 0x0F           ;   b'00001111'  d'015'
    MOVWF LRAM_0x78
    RETURN
LADR_0x0072
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,2          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
LADR_0x0078
    MOVLW 0x0F           ;   b'00001111'  d'015'
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    ANDWF PORTD,W        ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    IORLW 0xF0           ;   b'11110000'  d'240'
    MOVWF PORTD          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTD,2          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    BSF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    CALL LADR_0x006C
    MOVF LRAM_0x78,W
    MOVWF LRAM_0x38
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    BSF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    CALL LADR_0x006C
    MOVF LRAM_0x78,W
    MOVWF LRAM_0x37
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVLW 0x0F           ;   b'00001111'  d'015'
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    ANDWF PORTD,W        ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVWF PORTD          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    SWAPF LRAM_0x38,W
    MOVWF LRAM_0x77
    MOVLW 0xF0           ;   b'11110000'  d'240'
    ANDWF LRAM_0x77,F
    MOVF LRAM_0x77,W
    IORWF LRAM_0x37,W
    MOVWF LRAM_0x78
    MOVF LRAM_0x78,W
    MOVWF LRAM_0x37
    BTFSC LRAM_0x37,7
    GOTO LADR_0x0078
    BTFSS LRAM_0x35,0
    BCF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BTFSC LRAM_0x35,0
LADR_0x00A0
    BSF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    BCF PORTD,2          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    NOP
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    SWAPF LRAM_0x36,W
    MOVWF LRAM_0x37
    MOVLW 0x0F           ;   b'00001111'  d'015'
    ANDWF LRAM_0x37,F
    MOVF LRAM_0x37,W
    MOVWF LRAM_0x38
    CALL LADR_0x0060
    MOVF LRAM_0x36,W
    ANDLW 0x0F           ;   b'00001111'  d'015'
    MOVWF LRAM_0x37
    MOVWF LRAM_0x38
    CALL LADR_0x0060
    RETURN
LADR_0x00B2
    MOVLW 0x28           ;   b'00101000'  d'040'  "("
    MOVWF LRAM_0x2B
    MOVLW 0x0C           ;   b'00001100'  d'012'
    MOVWF LRAM_0x2C
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2D
    MOVLW 0x06           ;   b'00000110'  d'006'
    MOVWF LRAM_0x2E
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,2          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVLW 0x0F           ;   b'00001111'  d'015'
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    ANDWF PORTD,W        ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVWF PORTD          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,0          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,1          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    BCF PORTD,2          ; !!Bank!! PORTD - TRISD - Unimplemented - Unimplemented
    MOVLW 0x0F           ;   b'00001111'  d'015'
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2A
LADR_0x00CA
    MOVF LRAM_0x2A,W
    SUBLW 0x03           ;   b'00000011'  d'003'
LADR_0x00CC
    BTFSS STATUS,C
    GOTO LADR_0x00D6
    MOVLW 0x03           ;   b'00000011'  d'003'
    MOVWF LRAM_0x38
    CALL LADR_0x0060
    MOVLW 0x05           ;   b'00000101'  d'005'
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    INCF LRAM_0x2A,F
    GOTO LADR_0x00CA
LADR_0x00D6
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x38
    CALL LADR_0x0060
    MOVLW 0x05           ;   b'00000101'  d'005'
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    CLRF LRAM_0x2A
LADR_0x00DD
    MOVF LRAM_0x2A,W
    SUBLW 0x03           ;   b'00000011'  d'003'
    BTFSS STATUS,C
    GOTO LADR_0x00ED
    MOVLW 0x2B           ;   b'00101011'  d'043'  "+"
    ADDWF LRAM_0x2A,W
    MOVWF FSR
    BCF STATUS,IRP
    MOVF INDF,W
    MOVWF LRAM_0x2F
    CLRF LRAM_0x35
    MOVF LRAM_0x2F,W
    MOVWF LRAM_0x36
    CALL LADR_0x0072
    INCF LRAM_0x2A,F
    GOTO LADR_0x00DD
LADR_0x00ED
    BCF PCLATH,3         ; !!Bank Program-Page-Select
    BCF PCLATH,4         ; !!Bank Program-Page-Select
    GOTO LADR_0x026B
LADR_0x00F0
    DECFSZ LRAM_0x32,W
    GOTO LADR_0x00F3
    GOTO LADR_0x00F6
LADR_0x00F3
    MOVLW 0x40           ;   b'01000000'  d'064'  "@"
    MOVWF LRAM_0x33
    GOTO LADR_0x00F7
LADR_0x00F6
    CLRF LRAM_0x33
LADR_0x00F7
    MOVLW 0x01           ;   b'00000001'  d'001'
    SUBWF LRAM_0x31,W
    ADDWF LRAM_0x33,F
    MOVF LRAM_0x33,W
    IORLW 0x80           ;   b'10000000'  d'128'
    MOVWF LRAM_0x34
    CLRF LRAM_0x35
    MOVF LRAM_0x34,W
    MOVWF LRAM_0x36
    CALL LADR_0x0072
    RETURN
LADR_0x0102
    MOVF LRAM_0x30,W
    XORLW 0x07           ;   b'00000111'  d'007'
    BTFSC STATUS,Z
    GOTO LADR_0x0110
    XORLW 0x0B           ;   b'00001011'  d'011'
    BTFSC STATUS,Z
    GOTO LADR_0x0115
    XORLW 0x06           ;   b'00000110'  d'006'
    BTFSC STATUS,Z
    GOTO LADR_0x011D
    XORLW 0x02           ;   b'00000010'  d'002'
    BTFSC STATUS,Z
    GOTO LADR_0x0123
    GOTO LADR_0x0128
LADR_0x0110
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    GOTO LADR_0x012D
LADR_0x0115
    CLRF LRAM_0x35
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x36
    CALL LADR_0x0072
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    GOTO LADR_0x012D
LADR_0x011D
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    GOTO LADR_0x012D
LADR_0x0123
    CLRF LRAM_0x35
    MOVLW 0x10           ;   b'00010000'  d'016'
    MOVWF LRAM_0x36
    CALL LADR_0x0072
    GOTO LADR_0x012D
LADR_0x0128
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x35
    MOVF LRAM_0x30,W
    MOVWF LRAM_0x36
    CALL LADR_0x0072
LADR_0x012D
    RETURN
LADR_0x012E
    MOVF INTCON,W
    MOVWF LRAM_0x2B
    BCF INTCON,GIE
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BSF PIR1,7           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    BSF PIR1,0           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    NOP
    NOP
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BTFSC LRAM_0x2B,7
    BSF INTCON,GIE
    BTFSC STATUS,C
    GOTO LADR_0x0165
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR1,W          ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    ANDLW 0x7F           ;   b'01111111'  d'127'  ""
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2B
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR2,W          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2C
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF TMR1H,W         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2D
    MOVF LRAM_0x2B,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x2C,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF LRAM_0x2D,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF INTCON,W
    MOVWF LRAM_0x2E
    BCF INTCON,GIE
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BSF PIR1,7           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    BSF PIR1,0           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    NOP
    NOP
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BTFSC LRAM_0x2E,7
    BSF INTCON,GIE
    DECFSZ LRAM_0x2A,F
    GOTO LADR_0x0165
    GOTO LADR_0x0184
LADR_0x0165
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    RLF PIR1,W           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    RLF TMR1L,W          ; !!Bank!! TMR1L - PCON - EEDATH - Unimplemented
    ANDLW 0x7F           ;   b'01111111'  d'127'  ""
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2B
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR2,W          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2C
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF TMR1H,W         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2D
    MOVF LRAM_0x2B,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x2C,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF LRAM_0x2D,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    INCF PIR2,F          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BTFSC STATUS,Z
    INCF TMR1H,F         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    DECFSZ LRAM_0x2A,F
    GOTO LADR_0x012E
LADR_0x0184
    RETURN
LADR_0x0185
    MOVF LRAM_0x31,W
    CLRF LRAM_0x78
    SUBWF LRAM_0x30,W
    BTFSC STATUS,C
    GOTO LADR_0x018D
    MOVF LRAM_0x30,W
    MOVWF LRAM_0x77
    GOTO LADR_0x0199
LADR_0x018D
    CLRF LRAM_0x77
    MOVLW 0x08           ;   b'00001000'  d'008'
    MOVWF LRAM_0x32
LADR_0x0190
    RLF LRAM_0x30,F
    RLF LRAM_0x77,F
    MOVF LRAM_0x31,W
    SUBWF LRAM_0x77,W
    BTFSC STATUS,C
    MOVWF LRAM_0x77
    RLF LRAM_0x78,F
    DECFSZ LRAM_0x32,F
    GOTO LADR_0x0190
LADR_0x0199
    RETURN
LADR_0x019A
    MOVLW 0x20           ;   b'00100000'  d'032'  " "
    BTFSS LRAM_0x2B,4
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    MOVWF LRAM_0x2C
    MOVF LRAM_0x2A,W
    MOVWF LRAM_0x77
    BTFSS LRAM_0x2A,7
    GOTO LADR_0x01AA
    COMF LRAM_0x77,F
    INCF LRAM_0x77,F
    MOVF LRAM_0x77,W
    MOVWF LRAM_0x2A
    MOVLW 0x2D           ;   b'00101101'  d'045'  "-"
    MOVWF LRAM_0x2C
    BSF LRAM_0x2B,7
    BSF LRAM_0x2B,0
LADR_0x01AA
    MOVF LRAM_0x2A,W
    MOVWF LRAM_0x30
    MOVLW 0x64           ;   b'01100100'  d'100'  "d"
    MOVWF LRAM_0x31
    CALL LADR_0x0185
    MOVF LRAM_0x77,W
    MOVWF LRAM_0x2A
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    ADDWF LRAM_0x78,W
    MOVWF LRAM_0x2D
    MOVF LRAM_0x2A,W
    MOVWF LRAM_0x30
    MOVLW 0x0A           ;   b'00001010'  d'010'
    MOVWF LRAM_0x31
    CALL LADR_0x0185
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    ADDWF LRAM_0x77,W
    MOVWF LRAM_0x2F
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    ADDWF LRAM_0x78,W
    MOVWF LRAM_0x2E
    MOVF LRAM_0x2C,W
    MOVWF LRAM_0x77
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    SUBWF LRAM_0x2D,W
    BTFSC STATUS,Z
    GOTO LADR_0x01C9
    BSF LRAM_0x2B,1
    BTFSC LRAM_0x2B,7
    BSF LRAM_0x2B,2
    GOTO LADR_0x01DD
LADR_0x01C9
    BTFSC LRAM_0x2B,2
    GOTO LADR_0x01DD
    MOVF LRAM_0x2C,W
    MOVWF LRAM_0x2D
    BTFSC LRAM_0x2B,1
    GOTO LADR_0x01D4
    MOVLW 0x30           ;   b'00110000'  d'048'  "0"
    SUBWF LRAM_0x2E,W
    BTFSC STATUS,Z
    GOTO LADR_0x01D7
    BSF LRAM_0x2B,0
LADR_0x01D4
    BTFSC LRAM_0x2B,7
    BSF LRAM_0x2B,1
    GOTO LADR_0x01DD
LADR_0x01D7
    BTFSS STATUS,Z
    BSF LRAM_0x2B,0
    BTFSS STATUS,Z
    GOTO LADR_0x01DD
    MOVF LRAM_0x2D,W
    MOVWF LRAM_0x2E
LADR_0x01DD
    BTFSC LRAM_0x2B,2
    GOTO LADR_0x01E4
    BTFSC LRAM_0x2B,1
    GOTO LADR_0x01E7
    BTFSC LRAM_0x2B,0
    GOTO LADR_0x01EA
    GOTO LADR_0x01ED
LADR_0x01E4
    MOVF LRAM_0x2C,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
LADR_0x01E7
    MOVF LRAM_0x2D,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
LADR_0x01EA
    MOVF LRAM_0x2E,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
LADR_0x01ED
    MOVF LRAM_0x2F,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    RETURN
LADR_0x01F1
    MOVF INTCON,W
    MOVWF LRAM_0x2A
    BCF INTCON,GIE
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BSF PIR1,7           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    BSF PIR1,0           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    NOP
    NOP
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BTFSC LRAM_0x2A,7
    BSF INTCON,GIE
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR1,W          ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    ANDLW 0x7F           ;   b'01111111'  d'127'  ""
    BTFSC STATUS,Z
    GOTO LADR_0x0245
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR2,W          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2B
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF TMR1H,W         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2C
    MOVF LRAM_0x2A,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x2B,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF LRAM_0x2C,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF INTCON,W
    MOVWF LRAM_0x2D
    BCF INTCON,GIE
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BSF PIR1,7           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    BSF PIR1,0           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    NOP
    NOP
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    BTFSC LRAM_0x2D,7
    BSF INTCON,GIE
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    RLF PIR1,W           ; !!Bank!! PIR1 - PIE1 - EEDATA - EECON1
    RLF TMR1L,W          ; !!Bank!! TMR1L - PCON - EEDATH - Unimplemented
    ANDLW 0x7F           ;   b'01111111'  d'127'  ""
    BTFSC STATUS,Z
    GOTO LADR_0x0245
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF PIR2,W          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2B
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF TMR1H,W         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2C
    MOVF LRAM_0x2A,W
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x2B,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVF LRAM_0x2C,W
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    INCF PIR2,F          ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    BTFSC STATUS,Z
    INCF TMR1H,F         ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    GOTO LADR_0x01F1
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
LADR_0x0245
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    RETURN
LADR_0x0247
    MOVF STATUS,W
    ANDLW 0x1F           ;   b'00011111'  d'031'
    MOVWF STATUS
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x20
    CLRF LRAM_0x22
    CLRF LRAM_0x21
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF ADCON0,0         ; !!Bank!! ADCON0 - ADCON1 - Unimplemented - Unimplemented
    BSF ADCON0,1         ; !!Bank!! ADCON0 - ADCON1 - Unimplemented - Unimplemented
    BSF ADCON0,2         ; !!Bank!! ADCON0 - ADCON1 - Unimplemented - Unimplemented
    BCF ADCON0,3         ; !!Bank!! ADCON0 - ADCON1 - Unimplemented - Unimplemented
    MOVLW 0x07           ;   b'00000111'  d'007'
    MOVWF CCPR2H         ; !!Bank!! CCPR2H - Unimplemented - Unimplemented - Unimplemented
    BCF STATUS,IRP
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    CLRF LRAM_0x23
    CLRF LRAM_0x24
    CLRF LRAM_0x25
    CLRF LRAM_0x26
    CLRF LRAM_0x27
    CLRF LRAM_0x28
    CLRF LRAM_0x29
    BCF LRAM_0x20,0
    MOVF LRAM_0x20,W
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    MOVWF PORTC          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTC,0          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
    MOVLW 0xFF           ;   b'11111111'  d'255'
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    MOVWF PORTB          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    CLRF PORTB           ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    CLRF PORTB           ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x00B2
LADR_0x026B
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x04           ;   b'00000100'  d'004'
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x04           ;   b'00000100'  d'004'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    MOVF LRAM_0x26,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x25,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x24,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    INCF LRAM_0x23,F
    MOVF LRAM_0x23,W
    SUBLW 0x64           ;   b'01100100'  d'100'  "d"
    BTFSS STATUS,Z
    GOTO LADR_0x0296
    CLRF LRAM_0x23
    INCF LRAM_0x24,F
LADR_0x0296
    MOVF LRAM_0x24,W
    SUBLW 0x3C           ;   b'00111100'  d'060'  "<"
    BTFSS STATUS,Z
    GOTO LADR_0x029C
    CLRF LRAM_0x24
    INCF LRAM_0x25,F
LADR_0x029C
    MOVF LRAM_0x25,W
    SUBLW 0x3C           ;   b'00111100'  d'060'  "<"
    BTFSS STATUS,Z
    GOTO LADR_0x02A2
    CLRF LRAM_0x25
    INCF LRAM_0x26,F
LADR_0x02A2
    MOVF LRAM_0x26,W
    SUBLW 0x18           ;   b'00011000'  d'024'
    BTFSS STATUS,Z
    GOTO LADR_0x02A8
    CLRF LRAM_0x26
    INCF LRAM_0x24,F
LADR_0x02A8
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,2          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTB,2        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    INCF LRAM_0x24,F
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,1          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSC PORTB,1        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    INCF LRAM_0x25,F
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,3          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,3        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x0357
    MOVLW 0x0E           ;   b'00001110'  d'014'
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    CALL LADR_0x01F1
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x0F           ;   b'00001111'  d'015'
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    CALL LADR_0x01F1
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x2A
LADR_0x02CB
    MOVLW 0x96           ;   b'10010110'  d'150'
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    DECFSZ LRAM_0x2A,F
    GOTO LADR_0x02CB
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x17           ;   b'00010111'  d'023'
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x04           ;   b'00000100'  d'004'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    MOVF LRAM_0x27,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x29,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x28,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x2A
LADR_0x02F6
    MOVLW 0xC8           ;   b'11001000'  d'200'
    MOVWF LRAM_0x31
    CALL LADR_0x004B
    DECFSZ LRAM_0x2A,F
    GOTO LADR_0x02F6
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,5          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,5        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x0325
    MOVLW 0x01           ;   b'00000001'  d'001'
    ADDWF LRAM_0x29,F
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x21           ;   b'00100001'  d'033'  "!"
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x04           ;   b'00000100'  d'004'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    MOVF LRAM_0x27,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x29,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x28,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
LADR_0x0325
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,4          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,4        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x034F
    MOVLW 0x01           ;   b'00000001'  d'001'
    ADDWF LRAM_0x27,F
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x2B           ;   b'00101011'  d'043'  "+"
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x04           ;   b'00000100'  d'004'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    MOVF LRAM_0x27,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x29,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x28,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
LADR_0x034F
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,0          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,0        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x0357
    CLRF LRAM_0x27
    CLRF LRAM_0x29
    CLRF LRAM_0x28
LADR_0x0357
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,7          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,7        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x0364
    MOVLW 0x35           ;   b'00110101'  d'053'  "5"
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    CALL LADR_0x01F1
    GOTO LADR_0x038B
LADR_0x0364
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVLW 0x02           ;   b'00000010'  d'002'
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVLW 0x36           ;   b'00110110'  d'054'  "6"
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x04           ;   b'00000100'  d'004'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    MOVF LRAM_0x26,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x25,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x24,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x20           ;   b'00100000'  d'032'  " "
    MOVWF LRAM_0x30
    CALL LADR_0x0102
LADR_0x038B
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTB,6          ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BTFSS PORTB,6        ; !!Bank!! PORTB - TRISB - PORTB - TRISB
    GOTO LADR_0x03C8
    MOVF LRAM_0x27,W
    SUBWF LRAM_0x26,W
    BTFSS STATUS,Z
    GOTO LADR_0x03C2
    MOVF LRAM_0x29,W
    SUBWF LRAM_0x25,W
    BTFSS STATUS,Z
    GOTO LADR_0x03C2
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x31
    MOVWF LRAM_0x32
    CALL LADR_0x00F0
    MOVF LRAM_0x27,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x29,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x3A           ;   b'00111010'  d'058'  ":"
    MOVWF LRAM_0x30
    CALL LADR_0x0102
    MOVF LRAM_0x28,W
    MOVWF LRAM_0x2A
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x2B
    CALL LADR_0x019A
    MOVLW 0x47           ;   b'01000111'  d'071'  "G"
    BSF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF PIR2           ; !!Bank!! PIR2 - PIE2 - EEADR - EECON2
    MOVLW 0x00           ;   b'00000000'  d'000'
    MOVWF TMR1H          ; !!Bank!! TMR1H - Unimplemented - EEADRH - Unimplemented
    BCF STATUS,C
    MOVLW 0x07           ;   b'00000111'  d'007'
    BCF STATUS,RP1       ; !!Bank Register-Bank(2/3)-Select
    MOVWF LRAM_0x2A
    CALL LADR_0x012E
    BCF LRAM_0x20,0
    MOVF LRAM_0x20,W
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    MOVWF PORTC          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BSF PORTC,0          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
    GOTO LADR_0x03C8
LADR_0x03C2
    BCF LRAM_0x20,0
    MOVF LRAM_0x20,W
    BSF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    MOVWF PORTC          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
    BCF STATUS,RP0       ; !!Bank Register-Bank(0/1)-Select
    BCF PORTC,0          ; !!Bank!! PORTC - TRISC - Unimplemented - Unimplemented
LADR_0x03C8
    GOTO LADR_0x026B
    SLEEP

    End
