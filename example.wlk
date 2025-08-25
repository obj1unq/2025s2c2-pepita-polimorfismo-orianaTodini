object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
}
object pepon{
	var energia= 30 
	const energiaAlVolar = 20
	method energia() {
	  return(energia)
	}
	method comer(alimento) {
	  energia= energia + alimento.energiaQueAporta() / 2
	}
	method volar(kilomentos) {
		energia= energia - energiaAlVolar -2*3
	}
	

}
object roque {
  var aveActual= pepita
  var cantidadDeCenasHastaAhora= 0
   method darleDeComerA(unAve) {
    aveActual = unAve
  }
  method comer(alimento) {
	 aveActual.comer(alimento)
	 cantidadDeCenasHastaAhora = cantidadDeCenasHastaAhora + 1 
  }
  method  cantidadDeCenas() {
	return(cantidadDeCenasHastaAhora)
  }
}