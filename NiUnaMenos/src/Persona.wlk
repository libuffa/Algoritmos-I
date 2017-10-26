
class Persona {
	
	var composicionFamiliar = []
	var actitud
	
	constructor(_composicionFamiliar){
		composicionFamiliar = _composicionFamiliar
	}
	
	method meAnimoADenunciar(_agresion) = _agresion.esAgresionGrave() && self.tengoUnVinculoFamiliar(_agresion) && actitud.meAnimoADenunciar()
	
	method tengoUnVinculoFamiliar(_agresion) = composicionFamiliar.contains(_agresion.obtenerPersonaEfectuante())
	
	method miActitud(_actitud){
		actitud = _actitud
	}

}