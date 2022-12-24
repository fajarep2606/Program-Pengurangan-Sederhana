.MODEL SMALL
.ORG 100H
.DATA
MSG1 DB 10,13,'PENGURANGAN SEDERHANA   : $'
MSG2 DB 10,13,'Masukkan Kunci [Y]      : $'
MSG3 DB 10,13,10,13,'Masukkan Angka Pertama  : $'
MSG4 DB 10,13,'Masukkan Angka Kedua    : $'
MSG5 DB 10,13,10,13,'Jawabannya Adalah       : $' 
MSG DB 10,13,10,13,'               *** TERIMAKASIH ***$'
                           

NUM1 DB ?
NUM2 DB ?
RESULT DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H

  
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48

    CMP BH,2
    JE SUB

    
     
    
   SUB:
 
    LEA DX,MSG3  ;ENTER 1ST NUMBER
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG4    ;ENTER 2ND NUMBER
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    SUB BL,CL
    ADD BL,48
    
    
    
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H
    
    
    
    JMP EXIT_P 
    
    
 
    
    EXIT_P:
    
        LEA DX,MSG
        MOV AH,9
        INT 21H  
  
    
   
         
        
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

