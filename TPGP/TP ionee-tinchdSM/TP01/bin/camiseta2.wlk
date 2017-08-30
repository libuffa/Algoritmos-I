import dryfit.*

object camiseta2{
	const coefRefuerzos=0.5
	const coefCosturas=0.2
	
	var material = dryfit
	var color = 'rojo'
	var cantRefuerzos = 5
	var costurasExtra = 0
	
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

