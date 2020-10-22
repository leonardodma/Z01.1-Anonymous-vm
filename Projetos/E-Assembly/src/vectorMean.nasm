; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------


; olha quanto tem em ram4, soma r5 em r1, r4 -= 1, r


leaw $4, %A 
movw (%A), %D 
leaw $4, %A
addw %A, %D, %D
leaw $3, %A
movw %D, (%A) ; somei 4 ( 5 - 1) com o tamanho do vetor e salvei em R3 

WHILE:
leaw $3, %A
movw (%A), %D 
movw %D, %A ; A aponta pro ultimo posicao do vetor


movw (%A), %D 
leaw $1, %A 
addw %D, (%A), %D
movw %D, (%A) ; fez soma de vetor[r3] com R1, e guardou em R1 

leaw $3, %A
movw (%A), %D 
decw %D 
movw %D, (%A) ; atualizei a posicao do vetor que precisa ser somado em R3 

leaw $3, %A 
movw (%A), %D
leaw $4, %A
subw %D, %A, %D ; fiz D = R3 - R4, pra jmp
leaw $WHILE, %A
jg   ; ao final de todos os jumps r1 tem a soma, e r4 tem o temanho, só dividir r1/r4 que temos a media 
nop


leaw $1, %A 
movw (%A), %D 
leaw $2, %A
movw %D, (%A) ; R2 tem o total da soma tb 
LOOP_DIVISAO:
leaw $0, %A 
movw (%A), %D
incw %D
movw %D, (%A)
leaw $2, %A 
movw (%A), %D 
leaw $4, %A 
subw %D, (%A), %D 
leaw $2, %A 
movw %D, (%A)
leaw $LOOP_DIVISAO, %A
jg
nop











