
object sanMiguel {
	var sponsor = 'AMD'

	method getSponsor() {
		return sponsor
	}

	method isSatisfecho(camiseta) {
		return camiseta.getColor() == 'verde'
	}
}