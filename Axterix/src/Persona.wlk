
class Persona {

	var fuerza
	var resistencia
	var fueraDeCombate = false
	
	constructor(_fuerza, _resistencia){
		fuerza = _fuerza
		resistencia = _resistencia
	}
	
	method obtenerPoder() = fuerza * resistencia
	method fueraDeCombate() = fueraDeCombate
	
	method beberPocion(_pocion){
		_pocion.efectoPocion(self)
	}
	
	method recibirDanio(_cantidadDeDanio){
		self.modificarResistencia(- _cantidadDeDanio)
		if(resistencia < 1)	self.estoyFueraDeCombate(true)
	}
	
	method modificarResistencia(_resistencia){
		resistencia += _resistencia
	}
	
	method modificarFuerza(_fuerza){
		fuerza = _fuerza
	}
	
	method estoyFueraDeCombate(_valor){
		fueraDeCombate =  _valor
	}
}