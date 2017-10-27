
class Cantante {

	var puntaje
	var edad
	var sexo
	var generoMusical
	var indumentaria = []
	var vozAfinada
	
	constructor(_edad, _sexo, _generoMusical, _indumentaria, _vozAfinada){
		puntaje = 0
		edad = _edad
		sexo = _sexo
		generoMusical = _generoMusical
		indumentaria = _indumentaria
		vozAfinada = _vozAfinada 
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	method obtenerGeneroMusical() = generoMusical
	method obtenerIndumentaria() = indumentaria
	method soyAfinado() = vozAfinada
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

}