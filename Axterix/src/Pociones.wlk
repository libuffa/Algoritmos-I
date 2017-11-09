
class Pocion {

	var ingredientes = []
	
	constructor(_ingredientes){
		ingredientes = _ingredientes
	}
}

object dulceDeLeche {
	const masFuerza = 10
	const masResistencia = 2
	method efectoIngrediente(_soldado){
		_soldado.modificarFuerza(masFuerza)
		if(_soldado.fueraDeCombate())	_soldado.modificarResistencia(masResistencia)
	}
}