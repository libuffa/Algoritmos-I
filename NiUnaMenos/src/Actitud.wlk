object miedoso {
	method meAnimoADenunciar(_agresion, _agresiones) = false
	method efectoAmenazaDeMuerte() = self
}

class Paciente{
	
	var umbralDeTolerancia
	
	constructor(_umbralDeTolerancia){
		umbralDeTolerancia = _umbralDeTolerancia
	}
	
	method cantidadDeAgresionesDeLaPersonaEfectuante(_agresion, _agresiones) = _agresiones.count({ agresion =>
		agresion.obtenerPersonaEfectuante() == _agresion.obtenerPersonaEfectuante()
	})
	
	
	method meAnimoADenunciar(_agresion, _agresiones) = self.cantidadDeAgresionesDeLaPersonaEfectuante(_agresion, _agresiones) > umbralDeTolerancia
	
	method efectoAmenazaDeMuerte() = new Paciente(umbralDeTolerancia*2)
}

object aguerrido{
	method meAnimoADenunciar(_agresion, _agresiones) = _agresiones.any({ agresion => agresion.esAgresionGrave() })
	method efectoAmenazaDeMuerte() = new Paciente(5) 
}

object militante{
	method meAnimoADenunciar(_agresion, _agresiones) = true
	method efectoAmenazaDeMuerte() = aguerrido
}

