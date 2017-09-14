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

object tintoreria	{
	
	method cambiarColor(camiseta, nuevoColor){
		var adicional = 75
		if(camiseta.obtenerNombreMaterial() == "Dryfit") adicional =+ 100
		camiseta.cambiarColor(nuevoColor)
		self.agregarPrecioAdicional(camiseta, adicional)
	}
	method agregarPrecioAdicional(camiseta, adicional){
		var nuevoCosto = camiseta.obtenerCosto() + adicional
		camiseta.cambiarCosto(nuevoCosto)
	}
}