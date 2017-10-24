
class Planeta {

	var habitantes = []
	
	constructor(_habitantes){
		habitantes = _habitantes
	}
	
	method obtenerPotencia() = habitantes.sum({ habitante => habitante.obtenerPotencia() })
	
	method ordenarHabitantesPorPotencia() = habitantes.sortedBy({ habitanteUno, habitanteDos =>
		habitanteUno.obtenerPotencia() > habitanteDos.obtenerPotencia()
	})
	
	method obtenerTresHabitantesMasPoderosos() = self.ordenarHabitantesPorPotencia().take(3)
	
	method obtenerPotenciaTresMasPoderosos() = self.obtenerTresHabitantesMasPoderosos().sum({ poderoso =>
		poderoso.obtenerPotencia()
	})
	
	method compararPoderes() = self.obtenerPotenciaTresMasPoderosos() >= (self.obtenerPotencia() / 2)
	
	method soyUnaOrden() = self.compararPoderes()

}