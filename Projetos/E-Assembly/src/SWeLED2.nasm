; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!

leaw $52, %A
movw %A, %D
leaw $21184, %A
movw %D, (%A) ; mostra as constantes

leaw $256, %A 
movw %A, %D 
leaw $21185, %A
andw (%A), %D, %D 
leaw $21184, %A
addw %D, (%A), %D 
movw %D, (%A) ; SW[8] 

leaw $128, %A 
movw %A, %D 
leaw $21185, %A
andw (%A), %D, %D 
leaw $IF, %A      ;se sw and [010000000] == 0 : return [010000000]. else: return [000000000]
jne 
nop
leaw $128, %A 
movw %A, %D 
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A) ; faz o !SW[7]
IF:

leaw $5, %A
movw (%A), %D
leaw $8, %A
andw %D, %A, %D
leaw $21184, %A 
addw %D, (%A), %D
movw %D, (%A) ; RAM[5][3]

leaw $1, %A
movw %A, %D
leaw $21185, %A
andw %D, (%A), %D 
leaw $IF2, %A 
je
nop
leaw $2, %A 
movw %A, %D
leaw $21184, %A 
addw %D, (%A), %D
movw %D, (%A)  ; SW[0] na posicao 2 
IF2:


