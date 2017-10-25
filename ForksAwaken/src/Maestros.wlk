
object jedi { 
	
	const pazInteriorInicial = 80
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = _potenciaSable * _tiempo
	
	method obtenerCargaEmocionalInicial() = pazInteriorInicial
	
	method verificarEstadoEmocional(){
		if( pazInteriorInicial < 0 ) return sith
		else return self
	}
	
	method verificarSiAlteraMiVisionDelMundo(_cargaEmocional){
		if(_cargaEmocional < 0) return sith else return self
	}
}

object sith {
	
	var nivelDeOdioInicial = -90
	
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = self.obtenerPotenciaSableSith(_potenciaSable) + _tiempo
	
	method obtenerPotenciaSableSith(_potenciaSable) = _potenciaSable * 2
	
	method obtenerCargaEmocionalInicial() = nivelDeOdioInicial
	
	method verificarSiAlteraMiVisionDelMundo(_cargaEmocional){
		if(_cargaEmocional > 0) return jedi else return self
	}
}

