
class Cantante {

	var puntaje
	var edad
	var sexo
	
	constructor(_edad, _sexo){
		puntaje = 0
		edad = _edad
		sexo = _sexo 
	}
	
	method obtenerPuntaje() = puntaje
	method obtenerEdad() = edad
	method obtenerSexo() = sexo
	
	method impactarPuntaje(_puntaje){
		puntaje += _puntaje
	}

}