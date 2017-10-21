
class Sufragio {

	var listas = #{}
	var contadorDhont
	var coeficientes = #{}
	
	constructor (_listas, _cantidadDeBancas){
		listas = _listas
		contadorDhont = _cantidadDeBancas
	}
	
	method obtenerListas() = listas
	
	method contarListas() = listas.size()
	
	method obtenerContadorDhont() = contadorDhont
	
	method calculoDeVotos(_lista, _contador) = _lista.obtenerVotos() / _contador
	
	method realizarDhont(){
		contadorDhont.times({contador =>  listas.forEach({ lista => self.dividirVotos(lista, contador)}) })
	}
	
	method dividirVotos(_lista, _contador){
		_lista.agregarCoeficienteDeVotos(self.calculoDeVotos(_lista, _contador))
	}
	
	method agregarCoeficientes(){
		coeficientes.addAll(listas.forEach({lista => lista.obtenerCoeficienteDeVotos() }))
	}
	
	method ordenarCoeficientes(){
		coeficientes.sortBy({ coeficiente => coeficiente.obtenerValorCoeficiente() })
	}

}