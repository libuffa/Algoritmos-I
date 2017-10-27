
object mutual {

	var familiasDeLaMutual = []
	
	method cantidadDeFamilias() = familiasDeLaMutual.size()
	
	method estimarHorasDeTrabajo(_vivienda) = 20
	
	method agregarFamiliasALaMutual(_familias){
		familiasDeLaMutual.addAll(_familias)
	} 
}