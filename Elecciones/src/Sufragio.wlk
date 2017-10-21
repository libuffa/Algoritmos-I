
class Sufragio {

	var listas = #{}
	var contadorDhont
	
	constructor (_listas){
		listas = _listas
		contadorDhont = self.contarListas()
	}
	
	method obtenerListas() = listas
	
	method realizarDhont(){
		contadorDhont.times({contador =>{ listas.all( {lista => lista.dividirVotos(lista, contadorDhont) } ) } } )
	}
	
	method contarListas() = listas.size()
	
	method obtenerContadorDhont() = contadorDhont
	
	method dividirVotos(_lista, _contador){
		_lista.modificarCoeficienteDeVotos(self.calculoDeVotos(_lista, _contador))
	}
	
	method calculoDeVotos(_lista, _contador) = _listas.obtenerCoeficienteDeVotos() / _contador
	

}