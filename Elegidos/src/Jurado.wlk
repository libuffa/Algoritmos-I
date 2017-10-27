
object jurado {

	var jueces = []
	
	method cantidadDeJueces() = jueces.size()
	
	method nombrarGanador(_cantanteUno, _cantanteDos){
		if( _cantanteUno.obtenerPuntaje() > _cantanteDos.obtenerPuntaje())
			return _cantanteUno
		else
			return _cantanteDos
	}
	
	method ingresarJueces(_jueces){
		jueces.addAll(_jueces)
	}
	
	method votacion(_cantante){
		jueces.forEach({ juez => juez.votar(_cantante) })
	}
}