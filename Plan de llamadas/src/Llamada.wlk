
class Llamada {

	var costoFijo
	var costoPorMinuto
	
	constructor (pcostoFijo, pcostoPorMinuto){
		costoFijo = pcostoFijo
		costoPorMinuto = pcostoPorMinuto
	}
	
	method realizarLlamada(minuto){
		return costoFijo + (costoPorMinuto * minuto)
	}

}