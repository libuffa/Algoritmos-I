
class Lista {

	var votos
	var coeficienteDeVotos = #{}
	
	constructor(_votos){
		votos = _votos
		coeficienteDeVotos = self.modificarCoeficienteDeVotos(_votos)
	}
	
	method obtenerVotos() = votos
	
	method obtenerCoeficienteDeVotos() = coeficienteDeVotos
	
	method modificarCoeficienteDeVotos(nuevoCoeficiente){
		coeficienteDeVotos.add(nuevoCoeficiente)
	}

}