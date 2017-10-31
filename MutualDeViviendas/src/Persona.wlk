
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
	method calcularHorasTrabajadas(_horasTrabajadas) = _horasTrabajadas
	
	method realizarTrabajo(_horasTrabajadas){
		self.soyMenor()
		cantidadDeHorasTrabajadas += self.calcularHorasTrabajadas(_horasTrabajadas)
	}
	
	method soyMenor(){
		if(self.obtenerEdad() < 18) throw new Exception("No puede trabajar un menor de edad")
	}
}

class Electricista inherits Persona{
	override method calcularHorasTrabajadas(_horasTrabajadas) = _horasTrabajadas * 1.2
}

class Decoradora inherits Persona{
	override method calcularHorasTrabajadas(_horasTrabajadas) = _horasTrabajadas * 2
}

class Desordenado inherits Persona{
	override method calcularHorasTrabajadas(_horasTrabajadas) = _horasTrabajadas * 0.75
}