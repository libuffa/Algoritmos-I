import Llamada.*

class Plan {

	var costoServicio
	var llamadaLocal = new Llamada(5, 1)
	var llamadaInt = new Llamada(9, 3)
	
	//Plan Full
	constructor (pcostoServicio){
		costoServicio  = pcostoServicio
	}
	
	method llamarPorCargo(llamar, minuto){
		costoServicio = costoServicio * llamar.realizarLlamada(minuto)
	}
	/*La principal tarea es llevar el control de la recaudación de la empresa a los distintos 
	 * clientes de acuerdo al plan que tiene cada uno. 

* 
El plan básico no tiene ningún costo si no se utiliza el servicio. Paga por cada comunicación 
* que realiza, de acuerdo a la tabla de precios vigente. siempre puede hacer llamadas. A fin de 
* mes paga lo que corresponda.
* 
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

}