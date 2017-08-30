
object tom {
	
	var energia = 10 
	const velBase = 5
	
	/*Cuando tom come un rat�n, su energ�a aumenta en 
	 * (12 joules + el peso del rat�n en gramos)*/ 
	method comeRaton(raton){
		energia = energia + 12 + raton.peso()
	}
	
	/*Cuando tom corre, su energ�a disminuye en 
	 * (0.5 x cantidad de metros que corri�)*/
	method correr(tiempo){
		energia = energia - (0.5 * self.calcularVelocidad() * tiempo)
	}
	
	method calcularVelocidad(){
		return velBase + energia/10
	}
}

object jerry {
	
	var peso = 10
	
	method peso(){
		return peso
	}
	
}