object miedoso {
	method meAnimoADenunciar(_agresion, _agresiones) = false
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
}

object aguerrido{
	method meAnimoADenunciar(_agresion, _agresiones) = _agresiones.any({ agresion => agresion.esAgresionGrave() }) 
}

object militante{
	method meAnimoADenunciar(_agresion, _agresiones) = true
}

