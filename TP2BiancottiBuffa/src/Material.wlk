class Material {
	/*	Atributos	 */
	var nombreMaterial
	var resistencia
	var costoBase

	/*	Constructores	 */
	constructor(pnombreMaterial, presistencia, pcostoBase){
		nombreMaterial = pnombreMaterial
		resistencia = presistencia
		costoBase = pcostoBase
	}
	
	/*	Metodos de retorno	 */
	method obtenerResistencia(){
		return resistencia
	}
	
	method obtenerCostoBase(){
		return costoBase
	}
	
	method obtenerNombreMaterial(){
		return nombreMaterial
	}
	
	/*	Metodos de efecto de lado	 */
	method cambiarCostobase(nuevoCostobase){
		costoBase = nuevoCostobase
	}
}