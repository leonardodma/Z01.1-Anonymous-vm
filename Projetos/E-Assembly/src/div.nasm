; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
; divisao para numeros inteiros positivos


WHILE:
leaw $1, %A
movw (%A), %D ; D = RAM[1]
leaw $0, %A
subw (%A), %D, %D ; D = RAM[0] - RAM[1]

leaw $IF, %A
jge %D ; Pula para o if se D for maior igual a zero 
nop

leaw $END, %A ; Termina o código caso o contrário
jmp
nop

IF:
    leaw $0, %A
    movw %D, (%A) ; RAM[0] = RAM[0] - RAM[1]
    leaw $2, %A
    movw (%A), %D ; D = RAM[2]
    incw %D       ; D = RAM[2] - 1
    movw %D, (%A) ; RAM[2] = RAM[2] - 1
    leaw $WHILE, %A
    jmp
    nop

END: