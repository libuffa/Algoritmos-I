
class Juez {

	constructor()
	
	method obtenerVotoPositivo(_cantante){
		_cantante.impactarPuntaje(10)
	}
	
	method obtenerVotoNegativo(_cantante){
		_cantante.impactarPuntaje( _cantante.obtenerPuntaje() * (-0.5) )
	}

}