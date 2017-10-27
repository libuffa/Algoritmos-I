
class Familia {

	var titularFamilia
	var otrosIntegrantesFamilia = []
	
	constructor(_titularFamilia, _otrosIntegrantesFamilia){
		titularFamilia = _titularFamilia
		otrosIntegrantesFamilia = _otrosIntegrantesFamilia
	}
	
	method obtenerTitularFamilia() = titularFamilia
	method obtenerOtrosIntegrantesFamilia() = otrosIntegrantesFamilia
	method cantidadOtrosIntegrantesFamilia() = otrosIntegrantesFamilia.size()
}

class Persona {
	
	var nombre
	var edad
	
	constructor(_nombre, _edad){
		nombre = _nombre
		edad = _edad
	}
	
	method obtenerNombre() = nombre
	method obtenerEdad() = edad
}