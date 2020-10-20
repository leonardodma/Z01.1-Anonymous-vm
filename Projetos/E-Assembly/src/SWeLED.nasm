; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova


leaw $496, %A
movw %A, %D
leaw $21184, %A
movw %D, (%A) ; mostra as constantes

leaw $2, %A 
movw %A, %D
leaw $21185, %A 
andw %D, (%A), %D ;if D == 0 : retorna com bit 1, else: nop
leaw $IF1, %A
jne 
nop
leaw $2, %A 
movw %A, %D
leaw $21184, %A
addw %D, (%A), %D 
movw %D, (%A) ; !SW1
IF1:

leaw $4, %A 
movw %A, %D
leaw $21185, %A 
andw %D, (%A), %D ;if D == 0 : retorna com bit 1, else: nop
leaw $IF2, %A
jne 
nop
leaw $4, %A 
movw %A, %D
leaw $21184, %A
addw %D, (%A), %D 
movw %D, (%A) ; !SW2
IF2:

leaw $8, %A 
movw %A, %D
leaw $21185, %A 
andw %D, (%A), %D ;if D == 0 : retorna com bit 1, else: nop
leaw $IF3, %A
jne 
nop
leaw $8, %A 
movw %A, %D
leaw $21184, %A
addw %D, (%A), %D 
movw %D, (%A) ; !SW3
IF3:

