
class Persona {
	
	var nombre
	var edad
	var cantidadDeHorasTrabajadas
	var profesion
	
	constructor(_nombre, _edad, _profesion){
		nombre = _nombre
		edad = _edad
		profesion = _profesion
		cantidadDeHorasTrabajadas = 0
	}
	
	method obtenerNombre() = nombre
	method obtenerEdad() = edad
	method obtenerCantidadDeHorasTrabajadas() = cantidadDeHorasTrabajadas
	method verificarHorasDeTrabajo(_horasTrabajadas) = profesion.horasDeTrabajo(_horasTrabajadas)
	
	method realizarTrabajo(_horasTrabajadas){
		self.soyMenor()
		cantidadDeHorasTrabajadas += _horasTrabajadas
	}
	
	method soyMenor(){
		if(self.obtenerEdad() < 18) throw new Exception("No puede trabajar un menor de edad")
	}
}

object sinProfesion{
	method horasDeTrabajo(_horasTrabajadas) = _horasTrabajadas
}

object electricista{
	method horasDeTrabajo(_horasTrabajadas) = _horasTrabajadas * 1.2
}

object decoradora{
	method horasDeTrabajo(_horasTrabajadas) = _horasTrabajadas * 2
}