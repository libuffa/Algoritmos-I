
object chanchito {

	var calorias = 280
	
	method calorias(){
		return calorias
	}
	
}

object casaDePaja {
	
	var resistencia = 0
	
	method resistencia(){
		return resistencia + chanchito.calorias()
	}
	
	method distancia(){
		return 2
	}
	
}

object casaDeMadera {
	
	var resistencia = 5
	
	method resistencia(){
		return resistencia + (chanchito.calorias() * 2)
	}
	
	method distancia(){
		return 12
	}
	
}

object casaDeLadrillo {
	
	var ladrillos = 10 
	var resistencia = ladrillos * 2
	
	method resistencia(){
		return resistencia + (chanchito.calorias() * 3)
	}
	
	method distancia(){
		return 8
	}
}