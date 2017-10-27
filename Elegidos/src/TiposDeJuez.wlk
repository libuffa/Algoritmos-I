
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