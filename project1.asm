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

    PUSH 2B61H ;fiziksel adres : 0721E
    PUSH 4B21H ;fiziksel adres : 0721C
    PUSH 7C45H ;fiziksel adres : 0721A
    
    POP AX      ; SP = 00FC
    MOV BX, AX  
    POP AX       ; SP = 00FE
    ADD BX, AX   ; cf= 0, af = 0, pf =1, zf=0, sf=1, of=1
    POP AX       ; SP = 0100
    ADD BX, AX   ; cf= 0, af = 0, pf =0, zf=0, sf=1, of=0
      
ends

end start ; set entry point and stop the assembler.
