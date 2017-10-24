
object jedi { 
	
	var pazInteriorInicial = 80
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = _potenciaSable * _tiempo
	
	method verificarEstadoEmocional(){
		if( pazInteriorInicial < 0 ) return sith
		else return self
	}
	
	method cargaEmocional(_cargaEmocional){
		pazInteriorInicial += _cargaEmocional
	}
}

object sith {
	
	var nivelDeOdioInicial = -90
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = self.obtenerPotenciaSableSith(_potenciaSable) + _tiempo
	
	method obtenerPotenciaSableSith(_potenciaSable) = _potenciaSable * 2
	
	method convertir() =  jedi
	
	method cargaEmocional(_cargaEmocional){
		nivelDeOdioInicial += _cargaEmocional
	}
}

