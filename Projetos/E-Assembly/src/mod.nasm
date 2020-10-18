; ------------------------------------------------------------
; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Calcula o resto da divisão (modulus) entre RAM[0] por RAM[1]
; e armazena o resultado na RAM[2].
;
; 4  % 3 = 1
; 10 % 7 = 3
; ------------------------------------------------------------

leaw $0, %A
movw $0, (%A)
leaw $1, %A
movw (%A), %D
leaw $2, %A
subw %D, %A, %D
leaw $else, %A
jge %D
nop 
if:
leaw $0, %A
movw $1, (%A)
leaw $end, %A
jmp 
nop

else:
leaw $0, %A
movw $-1, (%A)
end:
