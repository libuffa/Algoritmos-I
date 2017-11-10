
class Aldea {

	var habitantes = []
	
	constructor(_habitantes){
		habitantes = _habitantes
	}
	
	method obtenerPoder() = self.obtenerHabitantesEnCombate().sum({ habitante => habitante.obtenerPoder() })
	method obtenerHabitantesEnCombate() = habitantes.filter({ habitante => !habitante.fueraDeCombate() })
	method quienEsMasPoderoso(_contrincante) = self.obtenerPoder() > _contrincante.obtenerPoder()
	
	method recibirDanio(_danio){
		var danio = _danio / habitantes.size()
		habitantes.forEach({ habitante => habitante.recibirDanio(danio) })
	}
	
	method combate(_contrincante){
		var danio = (self.obtenerPoder() - _contrincante.obtenerPoder()).abs()
		if(self.quienEsMasPoderoso(_contrincante))	_contrincante.recibirDanio(danio)
		else self.recibirDanio(danio)
	}
}

class CampamentoEnTortuga inherits Aldea {
	
	override method obtenerPoder() = habitantes.sortedBy({ habitanteUno, habitanteDos =>
		habitanteUno.obtenerPoder() > habitanteDos.obtenerPoder()
	}).get(0).obtenerPoder()
	
	override method recibirDanio(_danio){
		var danio = (_danio / habitantes.size()) / 2
		habitantes.forEach({ habitante => habitante.recibirDanio(danio) })
	}
}

class CampamentoEnCuadro inherits Aldea {
	override method obtenerPoder() = self.obtenerHabitantesEnCombate().sum({ habitante => habitante.obtenerPoder() }) * 2
}