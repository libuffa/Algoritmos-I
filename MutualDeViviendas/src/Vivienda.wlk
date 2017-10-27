
class Vivienda {
	
	var horasEstimadas
	var horasTrabajadas
	
	constructor(_horasEstimadas){
		horasEstimadas = _horasEstimadas
		horasTrabajadas = 0
	}
	
	method obtenerHorasEstimadas() = horasEstimadas
	method obtenerHorasTrabajadas() = horasTrabajadas
	method estoyArreglada() = self.obtenerHorasTrabajadas() > self.obtenerHorasEstimadas()
	
	method arreglarme(_horasTrabajadas){
		horasTrabajadas += _horasTrabajadas
	}
}