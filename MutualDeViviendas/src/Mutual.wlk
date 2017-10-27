
object mutual {

	var familiasDeLaMutual = []
	var registrosDeHoras = []
	
	method cantidadDeFamilias() = familiasDeLaMutual.size()
	method cantidadDeRegistrosDeHoras() = registrosDeHoras.size()
	method seCumplenLasCondicionesDeEntrega(_vivienda, _familia) = _vivienda.estoyListoParaSerEntregada(_familia) && _familia.cumploConLasCondicionesParaUnaVivienda()
	method filtrarPorVivienda(_vivienda) = registrosDeHoras.filter({ registroDeHoras =>
		registroDeHoras.obtenerVivienda() == _vivienda
	})
	method familiaTrabajoEnVivienda(_vivienda, _familia) = self.filtrarPorVivienda(_vivienda).any({ registroDeHoras =>
		_familia.obtenerOtrosIntegrantesFamilia().any({ familiar =>
			familiar == registroDeHoras.obtenerTrabajador()
		})
	})
	
	method cantidadDeFamiliasQueTrabajaronEnLaVivienda(_vivienda) = familiasDeLaMutual.count({ familia => self.familiaTrabajoEnVivienda(_vivienda, familia) })
	
	method agregarFamiliasALaMutual(_familias){
		familiasDeLaMutual.addAll(_familias)
	}
	
	method agregarRegistroDeHoras(_vivienda, _trabajador, _horasTrabajadas, _descripcion){
		var registroDeHoras = new RegistroDeHoras(_vivienda, _trabajador, _horasTrabajadas, _descripcion)
		registrosDeHoras.add(registroDeHoras)
	}
	
	method trabajarEnVivienda(_vivienda, _trabajador, _horasTrabajadas, _descripcion){
		var __horasTrabajadas = _trabajador.verificarHorasDeTrabajo(_horasTrabajadas)
		_vivienda.arreglarme(__horasTrabajadas)
		self.agregarRegistroDeHoras(_vivienda, _trabajador, __horasTrabajadas, _descripcion)
		_trabajador.realizarTrabajo(__horasTrabajadas)
	}
	
	method entregarVivienda(_vivienda, _familia){
		if(self.seCumplenLasCondicionesDeEntrega(_vivienda, _familia)) _familia.asignarmeVivienda(_vivienda)
	}
}

class RegistroDeHoras {
	var vivienda
	var trabajador
	var horasTrabajadas
	var descripcion
	
	constructor(_vivienda, _trabajador, _horasTrabajadas, _descripcion){
		vivienda = _vivienda
		trabajador = _trabajador
		horasTrabajadas = _horasTrabajadas
		descripcion = _descripcion
	}
	
	method obtenerVivienda() = vivienda
	method obtenerTrabajador() = trabajador
	method obtenerCantidadDeHoras() = horasTrabajadas
	method obtenerDescripcion() = descripcion
}