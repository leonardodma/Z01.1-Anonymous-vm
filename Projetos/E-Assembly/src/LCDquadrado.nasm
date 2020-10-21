; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD

; Quadrado: 16px x 16px
; desenha a parte de cima do quadrado
leaw $16384, %A
movw $-1,  (%A)

; Armazena 32769 = 1000000000000001 em %D
leaw $32769, %A
movw %A, %D

; Desenha as laterais do quadrado 14x
leaw $16404, (%A)
movw %D, (%A)

leaw $16424, %A
movw %D, (%A)

leaw $16444, %A
movw %D, (%A)

leaw $16464, %A
movw %D, (%A)

leaw $16484, %A
movw %D, (%A)

leaw $16504, %A
movw %D, (%A)

leaw $16524, %A
movw %D, (%A)

leaw $16544, %A
movw %D, (%A)

leaw $16564, %A
movw %D, (%A)

leaw $16584, %A
movw %D, (%A)

leaw $16604, %A
movw %D, (%A)

leaw $16624, %A
movw %D, (%A)

leaw $16644, %A
movw %D, (%A)

leaw $16664, %A
movw %D, (%A)

; Desenha a última linha do quadrado
leaw $16684, %A
movw $-1, (%A)
