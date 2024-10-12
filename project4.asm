; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax


    MOV AX, 9CH  
    ADD AX, 64H     
    
    ; CF=0, AF=1, PF=1, ZF=0, SF=0
    
    
    
    
ends

end start ; set entry point and stop the assembler.
