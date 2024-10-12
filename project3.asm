; multi-segment executable file template.

.STACK 64

.DATA

DATA1 DB 'dErSe GiREbilir MiYim?'
DATA2 DB 14 DUP(?)



.CODE
MAIN PROC FAR

    mov ax, @data
    mov ds, ax
   
    mov SI, OFFSET DATA1
    mov BX, OFFSET DATA2
    mov CX, 22
BACK: mov AL, [SI]
      CMP AL, 41H
      JB OVER
      CMP AL, 5AH
      JA OVER    
      
      OR AL, 00100000b 
OVER: mov [BX], AL
      inc SI
      inc BX
      LOOP BACK
       
    
    mov ah, 4Ch ; exit to operating system.
    int 21h
MAIN ENDP
     END MAIN
ends

end start ; set entry point and stop the assembler.
