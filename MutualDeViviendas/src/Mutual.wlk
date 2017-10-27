
object mutual {

	var familiasDeLaMutual = []
	var registrosDeHoras = []
	
	method cantidadDeFamilias() = familiasDeLaMutual.size()
	method cantidadDeRegistrosDeHoras() = registrosDeHoras.size()
	method seCumplenLasCondicionesDeEntrega(_vivienda, _familia) = _vivienda.estoyListoParaSerEntregada(_familia) && _familia.cumpliConMisHoras()
	
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
	
	method entregarVivienda(_vivienda, _familia){
		if(self.seCumplenLasCondicionesDeEntrega(_vivienda, _familia)) _familia.asignarmeVivienda(_vivienda)
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