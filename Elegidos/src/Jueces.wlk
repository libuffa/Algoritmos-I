
class Juez {

	var tipoDeJuez
	
	constructor(_tipoDeJuez){
		tipoDeJuez = _tipoDeJuez
	}
	
	method obtenerMiVoto(_cantante) = tipoDeJuez.obtenerMiVoto(_cantante)
	
	method obtenerVotoPositivo(_cantante){
		_cantante.impactarPuntaje(10)
	}
	
	method obtenerVotoNegativo(_cantante){
		_cantante.impactarPuntaje( _cantante.obtenerPuntaje() * (-0.5) )
	}
	
	method ingresarTipoDeJuez(_tipoDeJuez){
		tipoDeJuez = _tipoDeJuez
	}
}