import Prenda.*
/*/
class Proveedor	{
	var adicional
	var servicioProvisto
	
	constructor(padicional, pservicioProvisto){
		adicional = padicional
		servicioProvisto = pservicioProvisto
	}
	
	method obtenerServicioProvisto(){
		return servicioProvisto
	}
	
	method obtenerAdicional(){
		return adicional
	}
	
	method proveerServicio(camiseta){
		var sp = self.servicioProvisto()
		self.sp(camiseta)
	}
}
*/
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

object costurero	{
	
	method agregarRefuerzos(camiseta, nuevoRefuerzo){
		var adicional = 45
		//if(camiseta.obtenerNombreMaterial() == "Dryfit") adicional =+ 100
		camiseta.cambiarRefuerzos(nuevoRefuerzo)
		self.agregarPrecioAdicional(camiseta, adicional)
	}
	
	method agregarCosturaExtra(camiseta, nuevoCosturaExtra){
		var adicional = 60
		//if(camiseta.obtenerNombreMaterial() == "Dryfit") adicional =+ 100
		camiseta.cambiarCosturaExtra(nuevoCosturaExtra)
		self.agregarPrecioAdicional(camiseta, adicional)
	}
	
	method agregarPrecioAdicional(camiseta, adicional){
		var nuevoCosto = camiseta.obtenerCosto() + adicional
		camiseta.cambiarCosto(nuevoCosto)
	}
}