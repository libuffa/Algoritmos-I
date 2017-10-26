
class Persona {
	
	var composicionFamiliar = []
	
	constructor(_composicionFamiliar){
		composicionFamiliar = _composicionFamiliar
	}
	
	method meAnimoADenunciar(_agresion) = _agresion.esAgresionGrave() && self.tengoUnVinculoFamiliar(_agresion)
	
	method tengoUnVinculoFamiliar(_agresion) = composicionFamiliar.contains(_agresion.obtenerPersonaEfectuante())

}