import jugadoresPersonajes.*

object ballesta{
	var property altura = 0
	var flechas = 10
	const potencia = 4 
	method estaCargada() = flechas > 0 
	
	method registrarUso(){
		flechas -= 1 
	}	
	 
	 
	method recibirAtaque(potenciaArma){}
	method valorQueOtorga(){}
	
	method recibirTrabajo(){}
}

object jabalina{
	var property altura = 0 
	var property estaCargada = true
	var property  potencia = 30
	method registrarUso() =	self.estaCargada(false)
	
	method recibirAtaque(potenciaArma){}
	
	method valorQueOtorga(){}
	
	method recibirTrabajo(){}
}

object aurora{
	var property altura = 1
	var property estaViva = true
	
	method recibirAtaque(potenciaArma){
		if(potenciaArma > 10){
			estaViva = false
		}	
	}
	
	method valorQueOtorga() = 15
	
	method recibirTrabajo(){}
}

object castillo{
	var property altura =  20
	var property nivelDeDefensa = 150
	
	method recibirAtaque(potenciaArma) {
			nivelDeDefensa -= potenciaArma
	}
	method valorQueOtorga() = nivelDeDefensa / 5
		
	
	method recibirTrabajo(){
		// nivelDeDefensa = (nivelDeDefensa + 20 ).min(200)
	 	if(self.nivelDeDefensa() + 20 <= 200){
			nivelDeDefensa += 20
		}else{
			nivelDeDefensa = 200
		}
	}
}

object tipa{
	var property altura =  8
	
	method recibirAtaque(potenciaArma){}
	
	method valorQueOtorga() = altura * 2
	
	method recibirTrabajo(){
		altura += 1
	}
}