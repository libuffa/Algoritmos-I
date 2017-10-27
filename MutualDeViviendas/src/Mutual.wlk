
object mutual {

	var familiasDeLaMutual = []
	var registrosDeHoras = []
	
	method cantidadDeFamilias() = familiasDeLaMutual.size()
	
	method agregarFamiliasALaMutual(_familias){
		familiasDeLaMutual.addAll(_familias)
	}
	
	method agregarRegistroDeHoras(_cantidadDeHoras, _descripcion){
		var registroDeHoras = new RegistroDeHoras(_cantidadDeHoras, _descripcion)
		registrosDeHoras.add(registroDeHoras)
	}
	
	method trabajarEnVivienda(_vivienda, _trabajador, _horasTrabajadas, _descripcion){
		_vivienda.arreglarme(_horasTrabajadas)
		self.agregarRegistroDeHoras(_horasTrabajadas, _descripcion)
		_trabajador.realizarTrabajo(_horasTrabajadas)
	}
}

class RegistroDeHoras {
	var cantidadDeHoras
	var descripcion
	
	constructor(_cantidadDeHoras, _descripcion){
		cantidadDeHoras = _cantidadDeHoras
		descripcion = _descripcion
	}
	
	method obtenerCantidadDeHoras() = cantidadDeHoras
	method obtenerDescripcion() = descripcion
}