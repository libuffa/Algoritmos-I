object simba {
	var amigo = pumba
	method amigate(nuevo){
		amigo = nuevo
	}
	method estasContento(){
		return amigo.velocidad() > 10
	}

}

object pumba{
	method velocidad(){
		return 4
	}
}

object timon {
	var tiempo = 10
	var recorrido = 110
	method velocidad() {
		return recorrido / tiempo
	}
	method reducir(){
		recorrido = recorrido / 2
	}
}

object nala {
	var estadoAnimo = enojada
	
	method cambiarAnimo(animo){
		estadoAnimo = animo
	}
	
	//metodos para devolver algo
	method velocidad(){
		return estadoAnimo.velocidad()
	}
}

object feliz{
	method velocidad(){
		return 7
	}
}

object triste{
	method velocidad(){
		return 2
	}
}

object enojada{
	var intensidad = 3 
	method cambiarIntensidad(nuevo){
		intensidad = nuevo
	}
	method velocidad(){
		return intensidad * 2
	}
}

object enamorada{
	var pareja = timon
	method velocidad(){
		return pareja.velocidad()
	}
}