
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
	method quienEsMasPoderoso(_contrincante) = self.obtenerPoder() > _contrincante.obtenerPoder()
	
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
	
	method combate(_contrincante){
		var danio = (self.obtenerPoder() - _contrincante.obtenerPoder()).abs()
		if(self.quienEsMasPoderoso(_contrincante))	_contrincante.recibirDanio(danio)
		else self.recibirDanio(danio)
	}
}