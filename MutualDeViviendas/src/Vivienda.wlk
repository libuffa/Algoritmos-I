
class Vivienda {
	
	var horasEstimadas
	var horasTrabajadas
	
	constructor(_horasEstimadas){
		horasEstimadas = _horasEstimadas
		horasTrabajadas = 0
	}
	
	method obtenerHorasEstimadas() = horasEstimadas
	method obtenerHorasTrabajadas() = horasTrabajadas
	
	method arreglarme(_horasTrabajadas){
		horasTrabajadas += _horasTrabajadas
	}
}