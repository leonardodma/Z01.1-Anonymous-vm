; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 0 - Declarando função Main.main
Main.main:
; 1 - PUSH constant 55
leaw $55,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - POP temp 3
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $8,%A
movw %D,(%A)
; 4 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5,%A
movw %D,(%A)
; Label (marcador)
Main.Main.main.WHILE::
; 5 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - PUSH temp 3
leaw $8,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - ADD
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
; 8 - POP temp 3
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $8,%A
movw %D,(%A)
; 9 - PUSH temp 0
leaw $5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH temp 3
leaw $8,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - GT
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTMain0,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2Main0,%A
jmp
nop
GTMain0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2Main0:
; 12 - Goto Condicional
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $Main.Main.main.WHILE,%A
jne %D
nop
; Label (marcador)
Main.Main.main.while:
; 13 - Goto Incondicional
leaw $Main.Main.main.while,%A
jmp
nop
; End
