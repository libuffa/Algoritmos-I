
object sacachispas{
	var sponsor = 'Intel'
	
	method getSponsor(){
		return sponsor
	}
	
	method isSatisfecho(camiseta){
		return camiseta.getResistencia()>=9
	}
}