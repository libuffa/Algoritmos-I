
class Planeta {

	var habitantes = []
	
	constructor(_habitantes){
		habitantes = _habitantes
	}
	
	method obtenerPotencia() = habitantes.sum({ habitante => habitante.obtenerPotencia() })

}