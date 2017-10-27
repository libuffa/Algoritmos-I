
object baboso {

	method obtenerMiVoto(_cantante) = self.esCantanteMujer(_cantante) && self.esCantanteJoven(_cantante) 
	
	method esCantanteMujer(_cantante) = _cantante.obtenerSexo() == "F"
	
	method esCantanteJoven(_cantante) = _cantante.obtenerEdad() < 25
}

object tradicionalista{
	
	var generosMusicalesTradicionales = ["tango", "folklore", "cuarteto"]
	
	method obtenerMiVoto(_cantante) = self.esGeneroTradicional(_cantante.obtenerGeneroMusical())
	
	method esGeneroTradicional(_generoMusical) = generosMusicalesTradicionales.contains(_generoMusical) 
}

class Tecnico{
	
	var generoElegido
	
	constructor(_generoElegido){
		generoElegido = _generoElegido
	}
	
	method obtenerGeneroElegido() = generoElegido
	
	method obtenerMiVoto(_cantante) = self.esElGeneroElegido(_cantante.obtenerGeneroMusical())
	
	method esElGeneroElegido(_generoMusical) = self.obtenerGeneroElegido() == _generoMusical
	
	method cambiarGeneroElegido(_generoElegido){
		generoElegido = _generoElegido
	}
}

object juezPublico {
	method obtenerMiVoto(_cantante) = true
}