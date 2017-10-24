
object jedi { 
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = _potenciaSable * _tiempo  
}

object sith {
	method obtenerPotenciaMaestro(_potenciaSable, _tiempo) = self.obtenerPotenciaSableSith(_potenciaSable) + _tiempo
	method obtenerPotenciaSableSith(_potenciaSable) = _potenciaSable * 2
}

