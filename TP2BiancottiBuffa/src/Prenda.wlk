import Cliente.*
import Material.*

class Prenda {
	/*	Atributos	 */
	var duenio
	var leyenda = ""
	var material
	var cantRefuerzos
	var costuraExtra
	var color
	var costo
	var polyester = new Material("Polyester", 4, 300)
	
	/*	Constructores	 */
	constructor(pduenio, pcolor, pmaterial) {
		duenio = pduenio
		color = pcolor
		material = new Material(pmaterial.obtenerNombreMaterial(), pmaterial.obtenerResistencia(), pmaterial.obtenerCostoBase())
		costo = self.calcularCostoCamiseta()
	}
	
	constructor(pduenio, pmaterial, pcantRefuerzos, pcosturaExtra, pcolor) {
		duenio = pduenio
		material = new Material(pmaterial.obtenerNombreMaterial(), pmaterial.obtenerResistencia(), pmaterial.obtenerCostoBase()) 
		cantRefuerzos = pcantRefuerzos 
		costuraExtra = pcosturaExtra 
		color = pcolor
		costo = self.calcularCostoCamiseta()
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
	method calcularCostoCamiseta() {
		self.cambiarCostoBase()
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
	method cambiarCostoBase(){
		if(material.obtenerNombreMaterial() == "Polyester" && self.obtenerColor() == "negra")
			 material.cambiarCostobase(500)
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

