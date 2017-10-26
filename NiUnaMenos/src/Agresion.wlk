
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
	
	method esAgresionGrave() = palabrasUtilizadas.any({ palabraUtilizada =>
		palabrasInaceptables.obtenerPalabrasInaceptables().contains(palabraUtilizada)
	})

}

class AgresionFisica inherits Agresion{
	
	var elementoUtilizado
	
	constructor(_lugar, _personaEfectuante, _palabrasUtilizadas, _elementoUtilizado) 
	= super(_lugar, _personaEfectuante, _palabrasUtilizadas){
		elementoUtilizado = _elementoUtilizado
	}
}

object palabrasInaceptables{
	var palabrasInaceptables = ["puta", "zorra", "matar", "inutil"]
	
	method obtenerPalabrasInaceptables() = palabrasInaceptables
}