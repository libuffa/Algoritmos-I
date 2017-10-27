
class Persona {
	
	var composicionFamiliar = []
	var actitud
	var agresiones = []
	
	constructor(_composicionFamiliar){
		composicionFamiliar = _composicionFamiliar
	}
	
	method obtenerAgresiones() = agresiones
	
	method meAnimoADenunciar(_agresion) = _agresion.esAgresionGrave() && self.tengoUnVinculoFamiliar(_agresion) && actitud.meAnimoADenunciar(_agresion, agresiones)
	
	method tengoUnVinculoFamiliar(_agresion) = composicionFamiliar.contains(_agresion.obtenerPersonaEfectuante())
	
	method miActitud(_actitud){
		actitud = _actitud
	}
	
	method agregarAgresion(_agresion){
		agresiones.add(_agresion)
	}

}