
class Habitante {
 
	var valentia
	var inteligencia
	
	constructor(_valentia, _inteligencia){
		valentia = _valentia
		inteligencia = _inteligencia
	}
	
	method obtenerPotencia() = valentia + inteligencia
}

class Soldado inherits Habitante {
	
	var equipamento = []
	
	constructor(_valentia, _inteligencia, _equipamento) = self(_valentia, _inteligencia) {
		equipamento = _equipamento
	}
	
	override method obtenerPotencia() = super() + equipamento.sum({ equipo => equipo.obtenerPotencia() })
	
}