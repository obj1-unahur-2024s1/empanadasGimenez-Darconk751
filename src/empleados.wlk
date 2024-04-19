object galvan {
	var sueldoAcumulado = 0
	var deuda = 0
	var sueldo = 150000
	method sueldo() = sueldo
	method cobrarSueldo(){
		sueldoAcumulado = sueldoAcumulado + sueldo
	}
	// abs es un valor absoluto para que un número negativo quede en positivo.
	method gastar(cuanto){
		deuda = (deuda + cuanto).abs()
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return 0.max(sueldoAcumulado - deuda)
	}
	// Se considera pobre cuando tiene 0 pesos
	method estoyPobre(){
		return self.totalDinero() <= 0
	}
	
}

object baigorria {
	var sueldoAcumulado = 0
	var cantidadDeEmpanadas = 0
	var precioPorEmpanada = 150
	method sueldo(){
		return precioPorEmpanada * cantidadDeEmpanadas
	}
	method sueldoAcumulado(){
		return self.sueldo()
	}
	method cobrarSueldo(){
		sueldoAcumulado = sueldoAcumulado + self.sueldo()
	}
}