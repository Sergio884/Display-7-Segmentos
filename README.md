# Decodificador para Display de 7 Segmentos
## ATmega8535
### Set de instrucciones utilizado:
## ser
* Colocar el valor máximo al registro
* ser rd
* rd <- 0xFF
## out
* Salida para el puerto
* out P,rd
* P <- rd
## in
* Entrada del puerto al registro
* in rd,P
* rd <- P
## lid
* Le asigna el valor a un registro
* lid rd,k 
* rd<-k
## clr
* Realiza un clear a un registro
* clr rd
*rd<-rd-rd
## cp
* Le resta a su primer registro su segundo registro
* cp rd,rr
* rd-rr
## cpi
* Le resta a su primer registro un valor
* cp rd,k
* rd - k
## breq
* Valida de la bandera z (cero) está en 1
* Salta si **z=1**
* breq salto
## rjmp
* Salto relativo
* Salta sin validar nada
* rjmp salto
## add
* Suma dos registros
* add rd,rr
* rd <- rd + rr
