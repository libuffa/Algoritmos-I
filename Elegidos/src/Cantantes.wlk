
class Cantante {

	var puntaje
	var edad
	var sexo
	var generoMusical
	var indumentaria = []
	
	constructor(_edad, _sexo, _generoMusical, _indumentaria){
		puntaje = 0
		edad = _edad
		sexo = _sexo
		generoMusical = _generoMusical
		indumentaria = _indumentaria 
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	method obtenerGeneroMusical() = generoMusical
	method obtenerIndumentaria() = indumentaria
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

}