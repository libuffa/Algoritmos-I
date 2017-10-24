
class Habitante {

	var potencia 
	var valentia
	var inteligencia
	
	constructor(_valentia, _inteligencia){
		valentia = _valentia
		inteligencia = _inteligencia
		potencia = valentia + inteligencia
	}
	

}

class Soldado inherits Habitante {
	
	var equipamento = []
	
	constructor(_valentia, _inteligencia, _equipamento)= self(_valentia, _inteligencia) {
		equipamento = _equipamento
		potencia = self.obtenerPotencia()
	}
	
	method obtenerPotencia() = valentia + inteligencia + equipamento.sum({ equipo => equipo.obtenerPotencia() })
	
}