; multi-segment executable file template.
; TITLE PROGRAM
    
      .MODEL SMALL
      .STACK 64 
      
      .DATA 
      
DATA_IN DB 25H, 12H, 15H, 1FH, 2BH
SUM   DB ?          ;SUM icin 1 byte'lik yer ayir     ; ama atama yapma

      .CODE
      
MAIN  PROC FAR      ;programa giris noktasi
      
      mov AX, @DATA ;AX'e , data segment adresini yukle
      mov DS, AX    ;bu sekilde data segment adresi, DS registerina yuklenmis oluyor
     
      mov CX, 05
      mov BX, OFFSET DATA_IN ; BX'te DATA_IN'in baslangic adresini tutuyoruz
      mov AL, 0 
      
AGAIN: add AL, [BX]
      INC BX
      DEC CX
      JNZ AGAIN
      
      mov SUM, AL
      
     
      mov AH, 4CH
      INT 21H
    
MAIN  ENDP  

      END MAIN      ;program bitis noktasi

