
class Cantante {

	var puntaje
	var edad
	var sexo
	var generoMusical
	
	constructor(_edad, _sexo, _generoMusical){
		puntaje = 0
		edad = _edad
		sexo = _sexo
		generoMusical = _generoMusical 
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	method obtenerGeneroMusical() = generoMusical
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

}