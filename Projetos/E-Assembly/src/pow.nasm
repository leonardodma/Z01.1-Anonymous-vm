; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

leaw $1, $A
movw (%A), %D

; RAM[2] = Contador --> iníco: RAM[1] | fim: 0 
leaw $2, $A
movw %D, (%A)

LOOP:
    ; Termina o código se o contador der zero
    leaw $2, %A
    movw (%A), %D
    leaw $END, %A
    je %D
    nop

    leaw $1, $A
    movw (%A), %D

    leaw $0, %A
    addw (%A), %D, %D
    movw %D, (%A)

    ; Altera o contador
    leaw $2, $A
    movw (%A), %D 
    decw %D
    movw %D, (%A)

    ; Volta ao inicio do loop até o contador zerar
    leaw $LOOP, %A
    jmp
    nop

END: