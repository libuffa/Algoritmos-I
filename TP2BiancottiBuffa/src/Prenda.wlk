import Cliente.*

class Prenda {
	/*	Atributos	 */
	var duenio
	var leyenda = ""
	var material
	var cantRefuerzos
	var costuraExtra
	var color
	var costo

	/*	Constructores	 */
	constructor(pduenio, pcolor, pmaterial) {
		duenio = pduenio
		color = pcolor
		material = pmaterial
		costo = self.obtenerCostoCamiseta()
	}
	
	constructor(pduenio, pmaterial, pcantRefuerzos, pcosturaExtra, pcolor) {
		duenio = pduenio
		material = pmaterial 
		cantRefuerzos = pcantRefuerzos 
		costuraExtra = pcosturaExtra 
		color = pcolor
		costo = self.obtenerCostoCamiseta()
	}

	/*	Metodos de Retorno	 */
	method obtenerResistencia() {
		return ( material.obtenerResistencia() + self.obtenerResistenciaRefuerzos() ) *
		self.obtenerResistenciaCostura()
	}

	method obtenerResistenciaRefuerzos() {
		return 0.5 * self.obtenerCantRefuerzos()
	}
	method obtenerResistenciaCostura() {
		return ( 0.2 * self.obtenerCosturaExtra() ) + 1
	}
	method obtenerCostoCamiseta() {
		self.cambiarCostoBase(material)
		return material.obtenerCostoBase() + self.obtenerPrecioPorResistencia()
	}
	method obtenerPrecioPorResistencia() {
		return 50 * self.obtenerResistencia()
	}
	method obtenerCantRefuerzos() {
		return cantRefuerzos
	}
	method obtenerCosturaExtra() {
		return costuraExtra
	}
	//Ver como usar este metodo
	method cambiarCostoBase(tipoMaterial){
		if(tipoMaterial.obtenerNombreMaterial() == "Polyester" && self.obtenerColor() == "negra")
			 tipoMaterial.cambiarCostobase(500)
	}
	method obtenerColor() {
		return color
	}
	method obtenerCosto(){
		return costo
	}
	method obtenerLeyenda(){
		return leyenda
	}
	/*	Metodos de efecto de lado	 */
	method cambiarCosto(nuevoCosto){
		costo = nuevoCosto
	}
	method cambiarLeyenda(nuevaLeyenda){
		leyenda = nuevaLeyenda
	}
	method cambiarCantRefuerzo(nuevaCantRefuerzo){
		cantRefuerzos = nuevaCantRefuerzo
	}
	method cambiarCosturaExtra(nuevaCosturaExtra){
		costuraExtra = nuevaCosturaExtra
	}
}

