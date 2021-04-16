.include "m8535def.inc"
.def aux = r16
ser aux
out ddra,aux
out portb,aux
	
	ldi r17,$3F
	ldi r18,$06
	ldi r19,$5B
	ldi r20,$4F
	ldi r21,$66
	ldi r22,$6D
	ldi r23,$7D
	ldi r24,$27
	ldi r25,$7F
	ldi r26,$6F
	ldi r27,$77
	ldi r28,$7C
	ldi r29,$39
	clr zh
leer:
	in aux,pinb
	andi aux,$0F
	ldi zl,17
	add zl,aux
	cpi aux,$0D
	breq imprimirD
	cpi aux,$0E
	breq imprimirE
	cpi aux,$0F
	breq imprimirF
	ld aux,z
	out porta,aux
	rjmp leer

imprimirD:
	ldi aux,$5E
	out porta,aux
	rjmp leer

imprimirE:
	ldi aux,$79
	out porta,aux
	rjmp leer

imprimirF:
	ldi aux,$71
	out porta,aux
	rjmp leer


