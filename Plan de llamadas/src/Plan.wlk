import Llamada.*
import Pais.*

class Plan {
	var costoMensual = 0
	var limiteLlamadas = 0
	var cantLlamadas = 0

	constructor(pcostoMensual) {
		costoMensual = pcostoMensual
	}

	constructor(pcostoMensual, plimiteLlamadas) {
		costoMensual = pcostoMensual 
		limiteLlamadas = plimiteLlamadas
	}

	method llamarPorAbono(destino, minuto) {
		if (self.cobrarLlamada()) 
			costoMensual = costoMensual + destino.realizarLlamada(minuto)
	}

	method llamarPorTarjeta(destino, minuto) {
		if (self.puedoLlamar(destino, minuto)) 
			costoMensual = costoMensual - destino.realizarLlamada(minuto)
	}

	method sumarLlamada() {
		cantLlamadas = + 1
	}

	method cobrarLlamada() {
		return limiteLlamadas > cantLlamadas
	}

	method probarLlamada(destino, minuto) {
		return costoMensual - destino.realizarLlamada(minuto)
	}

	method puedoLlamar(destino, minuto) {
		return self.probarLlamada(destino, minuto) > 0
	}

	method cargarTarjeta(monto) {
		costoMensual = costoMensual + monto
	}

	method costoServicio() {
		return costoMensual
	}
}
/*La principal tarea es llevar el control de la recaudación de la empresa a los distintos 
 * clientes de acuerdo al plan que tiene cada uno. 
 
También está el llamado plan control, en el cual el cliente paga una tarifa mensual que cubre 
* las 100 primeras comunicaciones, y se cobra el excedente según los precios vigentes. 
* 
También hay un plan prepago, el cual funciona únicamente mediante tarjetas prepagas. Cada vez 
* que el cliente carga una tarjeta, su saldo aumenta.  (los valores de las tarjetas son $50, 
* $100 y  $200).

Los precios vigentes son los siguientes:
- Transferencia de datos: $ 2 por Mb
- Llamada nacional: $ 1 por minuto más 5$ fijos 
- Llamada internacional: $ 3 por minuto más un recargo según el país de destino.

Independientemente del plan de cada usuario, cada  vez que el cliente llama, se debe actualizar 
* su estado. 

Se pide:
- Que un cliente realice una comunicación
- Saber si un cliente tiene saldo suficiente para realizar una comunicación
- Averiguar si un cliente se comunicó más veces que otro cliente 
- Obtener el importe recaudado por la compañía telefonica
- Hacer que un cliente pague de acuerdo a su plan
	 */