
object jedi { 
	
	var pazInteriorInicial = 80
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = _potenciaSable * _tiempo
	
	method convertirJedi(){
		if( pazInteriorInicial < 0 ) sith
	}
	
	method cargaEmocional(_cargaEmocional){
		pazInteriorInicial += _cargaEmocional
		self.convertirJedi()
	}
}

object sith {
	
	var nivelDeOdioInicial = -90
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = self.obtenerPotenciaSableSith(_potenciaSable) + _tiempo
	
	method obtenerPotenciaSableSith(_potenciaSable) = _potenciaSable * 2
	
	method convertirSith(){
		if( nivelDeOdioInicial > 0 ) jedi
	}
	
	method cargaEmocional(_cargaEmocional){
		nivelDeOdioInicial += _cargaEmocional
		self.convertirSith()
	}
}

