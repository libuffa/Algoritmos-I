import Policia.*
import Actitud.*

class Persona {
	
	var composicionFamiliar = []
	var actitud
	var agresiones = []
	
	constructor(_composicionFamiliar){
		composicionFamiliar = _composicionFamiliar
	}
	
	method obtenerAgresiones() = agresiones
	method obtenerActitud() = actitud
	
	method meAnimoADenunciar(_agresion) = _agresion.esAgresionGrave() && self.tengoUnVinculoFamiliar(_agresion) && actitud.meAnimoADenunciar(_agresion, agresiones)
	
	method tengoUnVinculoFamiliar(_agresion) = composicionFamiliar.contains(_agresion.obtenerPersonaEfectuante())
	
	method miActitud(_actitud){
		actitud = _actitud
	}
	
	method agregarAgresion(_agresion){
		agresiones.add(_agresion)
	}
	
	method recibirAgresion(_agresion){
		self.agregarAgresion(_agresion)
		self.realizarDenuncia(_agresion)
	}
	
	method realizarDenuncia(_agresion){
		if(self.meAnimoADenunciar(_agresion)) policia.realizarDenuncia(_agresion, self)
	}
	
	method unirmeAOrganizacionSocial(){
		actitud = militante
	}

}