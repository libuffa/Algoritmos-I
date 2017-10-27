
object mutual {

	var familiasDeLaMutual = []
	
	method cantidadDeFamilias() = familiasDeLaMutual.size()
	
	method agregarFamiliasALaMutual(_familias){
		familiasDeLaMutual.addAll(_familias)
	} 
}