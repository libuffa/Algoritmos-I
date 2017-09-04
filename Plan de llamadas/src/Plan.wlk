
class Plan {

	var costoServicio
	
	//Plan Full
	constructor (pcostoServicio){
		costoServicio  = pcostoServicio
	}
	/*La principal tarea es llevar el control de la recaudaci�n de la empresa a los distintos 
	 * clientes de acuerdo al plan que tiene cada uno. 
	 * 
Los clientes con plan full no tienen l�mite de consumos. Pagan un precio fijo por mes sin 
* importar las llamadas y mensajes realizados. Actualmente este servicio tiene un valor de $200.
* 
El plan b�sico no tiene ning�n costo si no se utiliza el servicio. Paga por cada comunicaci�n 
* que realiza, de acuerdo a la tabla de precios vigente. siempre puede hacer llamadas. A fin de 
* mes paga lo que corresponda.
* 
Tambi�n est� el llamado plan control, en el cual el cliente paga una tarifa mensual que cubre 
* las 100 primeras comunicaciones, y se cobra el excedente seg�n los precios vigentes. 
* 
Tambi�n hay un plan prepago, el cual funciona �nicamente mediante tarjetas prepagas. Cada vez 
* que el cliente carga una tarjeta, su saldo aumenta.  (los valores de las tarjetas son $50, 
* $100 y  $200).

Los precios vigentes son los siguientes:
- Transferencia de datos: $ 2 por Mb
- Llamada nacional: $ 1 por minuto m�s 5$ fijos 
- Llamada internacional: $ 3 por minuto m�s un recargo seg�n el pa�s de destino.

Independientemente del plan de cada usuario, cada  vez que el cliente llama, se debe actualizar 
* su estado. 

Se pide:
- Que un cliente realice una comunicaci�n
- Saber si un cliente tiene saldo suficiente para realizar una comunicaci�n
- Averiguar si un cliente se comunic� m�s veces que otro cliente 
- Obtener el importe recaudado por la compa��a telefonica
- Hacer que un cliente pague de acuerdo a su plan
	 */

}