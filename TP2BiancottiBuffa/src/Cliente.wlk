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
		return camiseta.miResistencia() > resistenciaMinima
	}
	
	method obtenerAceptacionPorColor(camiseta) {
		return camiseta.color() == colorAceptado
	}
}