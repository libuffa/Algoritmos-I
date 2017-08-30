import poliester.*

object camiseta1{
	const coefRefuerzos=0.5
	const coefCosturas=0.2
	
	var material = poliester
	var color = 'verde'
	var cantRefuerzos = 2
	var costurasExtra = 3
	
	method getResistencia(){
		return self.calcularGradoResistencia()
	}
	
	method calcularGradoResistencia(){
		return (material.getResistencia()+coefRefuerzos*self.getCantRefuerzos())*(1+coefCosturas*self.getCosturasExtra())
	}
	method getColor(){
		return color
	}
	method getCantRefuerzos(){
		return cantRefuerzos
	}
	method getCosturasExtra(){
		return costurasExtra 
	}
	method getSponsor(cliente){
		return cliente.getSponsor()
	}
}

