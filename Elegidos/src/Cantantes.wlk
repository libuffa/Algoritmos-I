
class Cantante {

	var puntaje
	var edad
	var sexo
	var generoMusical
	var indumentaria = []
	var vozAfinada
	var habilidadDeBaile
	
	constructor(_edad, _sexo, _generoMusical, _indumentaria, _vozAfinada, _habilidadDeBaile){
		puntaje = 0
		edad = _edad
		sexo = _sexo
		generoMusical = _generoMusical
		indumentaria = _indumentaria
		vozAfinada = _vozAfinada
		habilidadDeBaile = _habilidadDeBaile 
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	method obtenerGeneroMusical() = generoMusical
	method obtenerIndumentaria() = indumentaria
	method soyAfinado() = vozAfinada
	method obtenerHabilidadDeBaile() = habilidadDeBaile
	
	method pertenezcoAlGenero() = generoMusical.perteneceAlGenero(self)
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

}