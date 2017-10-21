
class Sufragio {

	var listas = #{}
	var contadorDhont
	
	constructor (_listas){
		listas = _listas
		contadorDhont = self.contarListas()
	}
	
	method obtenerListas() = listas
	
	method realizarDhont(){
		listas.all({lista => lista.dividirVotos(lista, contadorDhont)})
		self.restarContadorDhont(contadorDhont)
		if(contadorDhont > 0) self.realizarDhont()
	}
	
	method contarListas() = listas.count()
	
	method dividirVotos(_lista, _contador){
		_lista.modificarCoeficienteDeVotos(self.calculoDeVotos(_lista, _contador))
	}
	
	method calculoDeVotos(_lista, _contador) = _listas.obtenerCoeficienteDeVotos() / _contador
	
	method restarContadorDhont(_contador){
		contadorDhont = contadorDhont - 1
	}

}