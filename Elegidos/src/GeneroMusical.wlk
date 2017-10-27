
object folklore {

	var calzados = ["alpargata", "botas"]
	
	method perteneceAlGenero(_cantante) = self.usaPoncho(_cantante) && self.usaCalzadoApropiado(_cantante)
	
	method usaPoncho(_cantante) = _cantante.obtenerIndumentaria().contains("poncho")
	
	method usaCalzadoApropiado(_cantante) = calzados.any({ calzado => 
		_cantante.obtenerIndumentaria().contains(calzado)
	}) 
}

object tango {
	
	method perteneceAlGenero(_cantante) = _cantante.soyAfinado() && self.tieneLaEdadAdecuada(_cantante) && self.usaSombrero(_cantante)
	
	method tieneLaEdadAdecuada(_cantante) = _cantante.obtenerEdad() > 50
	
	method usaSombrero(_cantante) = _cantante.obtenerIndumentaria().contains("sombrero")
}

object cumbia {
	method perteneceAlGenero(_cantante) = _cantante.obtenerHabilidadDeBaile()
}

object pop {
	method perteneceAlGenero(_cantante) = true
}