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


