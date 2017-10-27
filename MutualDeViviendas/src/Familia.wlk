
class Familia {

	var titularFamilia
	var otrosIntegrantesFamilia = []
	var minimoDeHorasDeTrabajo
	var vivienda
	
	constructor(_titularFamilia, _otrosIntegrantesFamilia, _minimoDeHorasDeTrabajo){
		titularFamilia = _titularFamilia
		otrosIntegrantesFamilia = _otrosIntegrantesFamilia
		minimoDeHorasDeTrabajo = _minimoDeHorasDeTrabajo
	}
	
	method obtenerTitularFamilia() = titularFamilia
	method obtenerOtrosIntegrantesFamilia() = otrosIntegrantesFamilia
	method cantidadOtrosIntegrantesFamilia() = otrosIntegrantesFamilia.size()
	method cantidadTotalDeIntegrantesDeLaFamilia() = self.cantidadOtrosIntegrantesFamilia() + 1 
	method obtenerTotalDeHorasTrabajadas() = self.obtenerTotalDeHorasTrabajadasDeOtrosIntegrantes() + titularFamilia.obtenerCantidadDeHorasTrabajadas()
	method obtenerTotalDeHorasTrabajadasDeOtrosIntegrantes() = otrosIntegrantesFamilia.sum({ integrante =>
		integrante.obtenerCantidadDeHorasTrabajadas()
	})
	method cumpliConMisHoras() = self.obtenerTotalDeHorasTrabajadas() > minimoDeHorasDeTrabajo
	method obtenerVivienda() = vivienda
	
	method asignarmeVivienda(_vivienda){
		vivienda = _vivienda
	}
}

class Persona {
	
	var nombre
	var edad
	var cantidadDeHorasTrabajadas
	
	constructor(_nombre, _edad){
		nombre = _nombre
		edad = _edad
		cantidadDeHorasTrabajadas = 0
	}
	
	method obtenerNombre() = nombre
	method obtenerEdad() = edad
	method obtenerCantidadDeHorasTrabajadas() = cantidadDeHorasTrabajadas
	
	method realizarTrabajo(_horasTrabajadas){
		self.soyMenor()
		cantidadDeHorasTrabajadas += _horasTrabajadas
	}
	
	method soyMenor(){
		if(self.obtenerEdad() < 18) throw new Exception("No puede trabajar un menor de edad")
	}
}