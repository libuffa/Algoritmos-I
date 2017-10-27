
class Familia {

	var titularFamilia
	var otrosIntegrantesFamilia = []
	var minimoDeHorasDeTrabajo
	var vivienda
	
	constructor(_titularFamilia, _otrosIntegrantesFamilia, _minimoDeHorasDeTrabajo){
		titularFamilia = _titularFamilia
		otrosIntegrantesFamilia = _otrosIntegrantesFamilia
		minimoDeHorasDeTrabajo = _minimoDeHorasDeTrabajo
		vivienda = 0
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
	method noTengoVivienda() = vivienda == 0
	method cumploConLasCondicionesParaUnaVivienda() = self.noTengoVivienda() && self.cumpliConMisHoras()
	
	method asignarmeVivienda(_vivienda){
		vivienda = _vivienda
	}
}