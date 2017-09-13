import Prenda.*


object estampador {
	
	/*	Metodos de efecto de lado	 */
	method agregarLeyenda(camiseta, nuevaLeyenda){
		var adicional = 100
		if(camiseta.obtenerLeyenda().size() > 5) adicional = 200 
		camiseta.cambiarLeyenda(nuevaLeyenda)
		self.agregarPrecioAdicional(camiseta, adicional)
	}
	
	method agregarPrecioAdicional(camiseta, adicional){
		var nuevoCosto = camiseta.obtenerCosto() + adicional
		camiseta.cambiarCosto(nuevoCosto)
	}

}