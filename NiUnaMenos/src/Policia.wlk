
object policia {

	var id = 0
	var denuncias = []
	
	method 	cantidadDeDenuncias() = denuncias.size()
	
	method realizarDenuncia(_agresion, _victima){
		var denuncia
		id += 1
		denuncia = new Denuncia(id, _agresion, _victima)
		self.agregarDenuncias(denuncia)
	}
	
	method agregarDenuncias(_denuncia){
		denuncias.add(_denuncia)
	}
	
}

class Denuncia{
	
	var id
	var agresion
	var victima
	
	constructor(_id, _agresion, _victima){
		id = _id
		agresion = _agresion
		victima = _victima
	}
	
}