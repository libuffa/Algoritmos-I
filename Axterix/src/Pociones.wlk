
class Pocion {

	var ingredientes = []
	
	constructor(_ingredientes){
		ingredientes = _ingredientes
	}
	
	method efectoPocion(_soldado) = ingredientes.forEach({ ingrediente => 
		ingrediente.efectoIngrediente(_soldado)
	})
}

class Ingrediente {
	var fuerza
	var resistencia
	
	constructor(_fuerza){
		fuerza = _fuerza
	}
	
	method efectoIngrediente(_soldado){
		_soldado.modificarFuerza(fuerza)	
	}
}

class DulceDeLeche inherits Ingrediente{
	
	constructor(_fuerza) = super(_fuerza){
		resistencia = 2
	}
	
	override method efectoIngrediente(_soldado){
		super(_soldado)
		if(_soldado.fueraDeCombate())	self.revivir(_soldado)
	}
	
	method revivir(_soldado){
		_soldado.estoyFueraDeCombate(false)
		_soldado.modificarResistencia(resistencia)
	}
}

class ManojoDeMuerdago inherits Ingrediente{
	
	constructor(_fuerza) = super(_fuerza){
		resistencia = {soldado => self.resistenciaDelMuerdago(soldado) }
	}
	
	method resistenciaDelMuerdago(_soldado) = -(soldado.obtenerResistencia() / 2)
	
	override method efectoIngrediente(_soldado){
		super(_soldado)8
		if(fuerza < 5)	_soldado.modificarResistencia(resistencia.apply(_soldado))
	}
}

class AceiteDeRoca inherits Ingrediente{
	var soyZumo
	
	constructor(_fuerza, _soyZumo) = super(_fuerza){
		resistencia = 1
		soyZumo = _soyZumo
	}
	
	override method efectoIngrediente(_soldado){
		super(_soldado)
		if(soyZumo)	_soldado.modificarResistencia(resistencia)
	}
}