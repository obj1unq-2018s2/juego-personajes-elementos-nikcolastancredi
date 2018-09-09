import elementos.*


object luisa {
	var property  personajeActivo = noHayPersonaje
}


object floki {
	var property arma 
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var property valorRecolectado = 0
	var alturaUltimoElemento = 0
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    alturaUltimoElemento = elemento.altura() //  quien tiene la responzabilidad de acordarse cual fue el ultimo elemento que se encontro
	    
	}
	
	method esFeliz ()  = valorRecolectado <= 50 or alturaUltimoElemento >= 10
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}