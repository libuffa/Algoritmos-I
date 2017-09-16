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

class Costurero	{
	
	/*	Atributos	 */
	var valorRefuerzo
	var valorCostura
	
	/*	Constructores	 */
	constructor(pvalorRefuerzo, pvalorCostura){
		valorRefuerzo = pvalorRefuerzo
		valorCostura = pvalorCostura
	}
	
	/*	Metodos de retorno	 */
	method calcularUnidadPorPrecio(cantidad, costoUnitario){
		return cantidad * costoUnitario
	}
	
	/*	Metodos de efecto de lado	 */
	method agregarRefuerzos(camiseta, nuevoRefuerzo){
		var costoUnitario = self.calcularUnidadPorPrecio(nuevoRefuerzo, valorRefuerzo)
		camiseta.cambiarCantRefuerzo(nuevoRefuerzo)
		self.agregarPrecioAdicional(camiseta,costoUnitario)
	}
	
	method agregarCosturaExtra(camiseta, nuevoCosturaExtra){
		var costoUnitario = self.calcularUnidadPorPrecio(nuevoCosturaExtra, valorCostura)
		camiseta.cambiarCosturaExtra(nuevoCosturaExtra)
		self.agregarPrecioAdicional(camiseta, costoUnitario)
	}
	
	method agregarPrecioAdicional(camiseta, precioAdicional){
		var nuevoCosto = camiseta.obtenerCosto() + precioAdicional
		camiseta.cambiarCosto(nuevoCosto)
	}
}