
object baboso {

	method obtenerMiVoto(_cantante) = self.esCantanteMujer(_cantante) && self.esCantanteJoven(_cantante) 
	
	method esCantanteMujer(_cantante) = _cantante.obtenerSexo() == "F"
	
	method esCantanteJoven(_cantante) = _cantante.obtenerEdad() < 25

}