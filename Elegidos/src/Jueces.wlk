import TiposDeJuez.*


class Juez {

	var tipoDeJuez
	
	constructor()
	
	constructor(_tipoDeJuez){
		tipoDeJuez = _tipoDeJuez
	}
	
	method obtenerMiVoto(_cantante) = tipoDeJuez.obtenerMiVoto(_cantante)
	
	method votar(_cantante){
		if(self.obtenerMiVoto(_cantante))
			self.obtenerVotoPositivo(_cantante)
		else
			self.obtenerVotoNegativo(_cantante)
	}
	
	method obtenerVotoPositivo(_cantante){
		_cantante.impactarPuntaje(10)
	}
	
	method obtenerVotoNegativo(_cantante){
		_cantante.impactarPuntaje(-5)
	}
	
	method ingresarTipoDeJuez(_tipoDeJuez){
		tipoDeJuez = _tipoDeJuez
	}
}

class Publico inherits Juez {
	
	constructor() = super()
	
	constructor(_tipoDeJuez) = super(_tipoDeJuez)
	
	override method obtenerMiVoto(_cantante) = true
	
	override method obtenerVotoPositivo(_cantante){
		_cantante.impactarPuntaje(2)
	}
	
	override method obtenerVotoNegativo(_cantante){
		_cantante.impactarPuntaje(-1)
	}
}