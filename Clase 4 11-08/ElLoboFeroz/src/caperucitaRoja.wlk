import lobo.*

object caperucitaRoja {
	
	var respuesta = 'A la casa de mi abuela'
	var calorias = 40
	var manzanas = 10
	var bosque = 30
	
	method calorias(){
		return calorias + (manzanas * 2)
	}
	
	method caperucitaResponde(){
		 return respuesta
	}
	
	method caperucitaMolesta(){
		loboSolitario.loboCome(self)
	}

	method distancia(){
		return bosque
	}

}