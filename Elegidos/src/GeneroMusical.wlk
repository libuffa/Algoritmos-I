
object folklore {

	var calzados = ["alpargata", "botas"]
	
	method perteneceAlGenero(_cantante) = self.usaPoncho(_cantante) && self.usaCalzadoApropiado(_cantante)
	
	method usaPoncho(_cantante) = _cantante.obtenerIndumentaria().contains("poncho")
	
	method usaCalzadoApropiado(_cantante) = calzados.any({ calzado => 
		_cantante.obtenerIndumentaria().contains(calzado)
	}) 

}