import chanchito.*
import caperucitaRoja.*

object loboSolitario {

	var calorias = 230
	
	method loboCome( comida ){
		calorias = calorias + comida.calorias()/10
	}
	
	method loboGordo(){
		return calorias > 200
	}
	
	method loboSaludable(){
		return calorias > 20 && calorias < 150
	}
	
	method loboCorre(lugar){
		calorias = calorias - (2 * lugar.distancia())
	}
	
	method loboPregunta(){
		return caperucitaRoja.caperucitaResponde()
	}
	
	method loboSopla( casa ){
		calorias = calorias - casa.resistencia()
	}

}	