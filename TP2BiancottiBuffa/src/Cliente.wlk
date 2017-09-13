import Prenda.*
import Material.*

class Cliente{
	/*	Atributos	 */
	var leyenda
	var resistenciaMinima
	var colorAceptado
	
	/*	Constructores	 */
	constructor(pleyenda, presistenciaMinima, pcolorAceptado){
		leyenda = pleyenda
		resistenciaMinima = presistenciaMinima
		colorAceptado = pcolorAceptado
	}
	
	/*	Metodos de Retorno	 */
	method obtenerAceptacionPorResistencia(camiseta) {
		return camiseta.obtenerResistencia() > resistenciaMinima
	}
	
	method obtenerAceptacionPorColor(camiseta) {
		return camiseta.obtenerColor() == colorAceptado
	}
	
	method obtenerLeyenda(){
		return leyenda
	}
	
	method obtenerResistenciaMinima(){
		return resistenciaMinima
	}
	
	method obtenerColorAceptado(){
		return colorAceptado
	}
}