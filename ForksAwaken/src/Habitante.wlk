
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

class Maestro inherits Habitante {
	
	var midiclorianos
	var potenciaSable
	var tipoDeMaestro
	var tiempo
	var cargaEmocional
	
	constructor(_valentia, _inteligencia, _midiclorianos, _potenciaSable, _tipoDeMaestro, _tiempo) = self(_valentia, _inteligencia){
		midiclorianos = _midiclorianos
		potenciaSable = _potenciaSable
		tipoDeMaestro = _tipoDeMaestro
		tiempo = _tiempo
		cargaEmocional = self.obtenerCargaEmocionalInicial()
	}
	
	override method obtenerPotencia() = super() + self.obtenerPotenciaMidiclorianos() + self.obtenerPotenciaSableDeLuz()
	
	method obtenerPotenciaMidiclorianos() = midiclorianos * 0.0001
	
	method obtenerPotenciaSableDeLuz() = tipoDeMaestro.obtenerPotenciaMaestro(potenciaSable, tiempo)
	
	method obtenerTipoDeMaestro() = tipoDeMaestro
	
	method obtenerCargaEmocionalInicial() = tipoDeMaestro.obtenerCargaEmocionalInicial()
	
	method cargaEmocional(_cargaEmocional) {
		cargaEmocional += _cargaEmocional
		tipoDeMaestro = tipoDeMaestro.verificarSiAlteraMiVisionDelMundo(cargaEmocional)
		}
}