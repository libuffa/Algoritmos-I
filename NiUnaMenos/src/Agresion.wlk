
class Agresion {

	var lugar
	var personaEfectuante
	var palabrasUtilizadas = []
	
	constructor(_lugar, _personaEfectuante, _palabrasUtilizadas){
		lugar = _lugar
		personaEfectuante = _personaEfectuante
		palabrasUtilizadas = _palabrasUtilizadas
	}
	
	method esAgresion() = true

}

class AgresionFisica inherits Agresion{
	
	var elementoUtilizado
	
	constructor(_lugar, _personaEfectuante, _palabrasUtilizadas, _elementoUtilizado) 
	= super(_lugar, _personaEfectuante, _palabrasUtilizadas){
		elementoUtilizado = _elementoUtilizado
	}
}