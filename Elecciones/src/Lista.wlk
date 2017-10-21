import Coeficiente.*

class Lista {

	var nombreLista
	var votos
	var coeficienteDeVotos = #{}
	
	constructor(_nombreLista, _votos){
		nombreLista = _nombreLista
		votos = _votos
	}
	
	method obtenerNombreLista() = nombreLista
	
	method obtenerVotos() = votos
	
	method obtenerCoeficienteDeVotos() = coeficienteDeVotos
	
	method agregarCoeficienteDeVotos(nuevoCoeficiente){
		coeficienteDeVotos.add(new Coeficiente(nuevoCoeficiente, self.obtenerNombreLista()))
	}

}