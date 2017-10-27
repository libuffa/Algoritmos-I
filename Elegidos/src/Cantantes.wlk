
class Cantante {

	var puntaje
	var edad
	var sexo
	var indumentaria = []
	var vozAfinada
	var habilidadDeBaile
	var cancionElegida
	
	constructor(_edad, _sexo, _cancionElegida, _indumentaria, _vozAfinada, _habilidadDeBaile){
		puntaje = 0
		edad = _edad
		sexo = _sexo
		cancionElegida = _cancionElegida
		indumentaria = _indumentaria
		vozAfinada = _vozAfinada
		habilidadDeBaile = _habilidadDeBaile
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	method obtenerCancionElegida() = cancionElegida
	method obtenerIndumentaria() = indumentaria
	method soyAfinado() = vozAfinada
	method obtenerHabilidadDeBaile() = habilidadDeBaile
	method obtenerGeneroMusical() = cancionElegida.obtenerGenero()
	method pertenezcoAlGenero() = self.obtenerGeneroMusical().perteneceAlGenero(self)
	method cantidadDeRopa() = indumentaria.size()
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

	method cambiarCancion(_cancion){
		cancionElegida = _cancion
	}
	
	method agregarIndumentaria(_indumentaria){
		indumentaria.addAll(_indumentaria)
	}
	
	method quitarIndumentaria(){
		indumentaria.clear()
	}
}

class Cancion {
	
	var autor
	var genero
	
	constructor(_autor, _genero){
		autor = _autor
		genero = _genero
	}
	
	method obtenerAutor() = autor
	method obtenerGenero() = genero
}