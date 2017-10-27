
class Vivienda {
	
	var horasEstimadas
	var horasTrabajadas
	
	constructor(_horasEstimadas){
		horasEstimadas = _horasEstimadas
		horasTrabajadas = 0
	}
	
	method obtenerHorasEstimadas() = horasEstimadas
	method obtenerHorasTrabajadas() = horasTrabajadas
	method obtenerCapacidad() = 0
	method estoyArreglada() = self.obtenerHorasTrabajadas() > self.obtenerHorasEstimadas()
	method soyAdecuadaParaUstedes(_familia) = _familia.cantidadTotalDeIntegrantesDeLaFamilia() >= (self.obtenerCapacidad() - 1) && _familia.cantidadTotalDeIntegrantesDeLaFamilia() <= (self.obtenerCapacidad() + 1) 
	
	method arreglarme(_horasTrabajadas){
		horasTrabajadas += _horasTrabajadas
	}
}

class Casa inherits Vivienda {
	var ambientes
	
	constructor(_horasEstimadas, _ambientes) = super(_horasEstimadas){
		ambientes = _ambientes
	}
	
	method obtenerCapacidad() = ambientes
}

class Departamento inherits Vivienda {
	var superficie
	
	constructor(_horasEstimadas, _superficie) = super(_horasEstimadas){
		superficie = _superficie
	}
	
	method obtenerCapacidad() = superficie / 15
}